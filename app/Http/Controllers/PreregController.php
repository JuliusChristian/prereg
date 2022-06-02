<?php 

namespace App\Http\Controllers;

use App\Http\Requests;
use App\Mail\ConfirmRegistration;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Http\Controllers\Controller;
use Illuminate\Validation\Rule;

use Validator;
use Auth;
use Session;
use Input;

class PreregController extends Controller {

	public $attempts = 0;
	public function index(){

		$event = \App\Event::where('event_active', 1)->first();
		if (!$event){
			$msg = 'No active events are taking place.';
			Session::put('errmsg', $msg);
			return view('prereg.noevent')->with(['msg' => $msg]);
		}

		$msg = Session::pull('errmsg', '');

		$row = new \App\Visitor;
		$row->region_id = 5;
		$row->event_id = $event->event_id;
		$row->vis_code = '';
		$row->vis_batch = 0;
		$row->vis_serial = 0;
		return view('prereg.form')->with(['row' => $row, 'msg' => $msg, 'event' => $event]);
	}

	public function save(Request $request){

		$event = \App\Event::where('event_active', 1)->first();
		if (!$event){
			$msg = 'No active events are taking place.';
			Session::put('errmsg', $msg);
			return view('prereg.noevent')->with(['msg' => $msg]);
		}

		$GLOBALS['event_id'] = $event->event_id;

		$msg = '';

		$input = $request->all();
		$attr = array(
			'vis_code' => 'Barcode',
			'vis_fname' => 'First Name',
			'vis_mname' => 'Middle Name',
			'vis_lname' => 'Last Name',
			'vis_email' => 'Email',
			'vis_gsm' => 'Mobile',
			'vis_enabled' => 'Enabled',
			'vis_age' => 'Age',
			'vis_address' => 'Address',
			'vis_barangay' => 'Barangay',
			'vis_province' => 'Province',
			'vis_municipality' => 'Municipality',
			'vis_company' => 'Company',
			'vis_day' => 'Day of Visit',
			'gender_id' => 'Gender',
			'region_id' => 'Region',
			'civil_id' => 'Civil Status',
		);
		$rules = array(
			'vis_age' => 'integer',
			'vis_email' => [
				'email',
				'required'
			],
			'vis_fname' => 'required|min:1',
			'vis_lname' => 'required|min:1',
		);

		$val = Validator::make($input, $rules);
		$val->setAttributeNames($attr);

		if ($val->fails()){
			return redirect('/')->withInput()->withErrors($val);
		}

		$code = $this->getNewBarcode();
		$batch = str_pad($code['batch'].'',4,'0', STR_PAD_LEFT);
		$serial = str_pad($code['serial'].'',4,'0', STR_PAD_LEFT);

		$row = new \App\Visitor;
		
		$row->event_id = $event->event_id;
		$row->vis_fname = $request->input('vis_fname');
		$row->vis_mname = $request->input('vis_mname');
		$row->vis_lname = $request->input('vis_lname');
		$row->vis_age = $request->input('vis_age');
		$row->vis_email = $request->input('vis_email');
		$row->vis_gsm = $request->input('vis_gsm');
		$row->vis_company = $request->input('vis_company');
		$row->gender_id = $request->input('gender_id');
		//$row->civil_id = $request->input('civil_id');
		$row->region_id = $request->input('region_id');
		$row->vis_province = $request->input('vis_province');
		$row->vis_municipality = $request->input('vis_municipality');
		$row->vis_address = $request->input('vis_address');
		$row->class_id = $request->input('class_id');
		if ($request->has('vis_day')){
			$row->vis_day = $request->input('vis_day');
		}
		$row->vis_code = $batch.$serial;
		$row->vis_batch = $code['batch'];
		$row->vis_serial = $code['serial'];
		
		$row->save();

		$visitor = \App\VWVisitor::where('vis_id', $row->vis_id)->first();

		try{
			Mail::to($row->vis_email)->bcc('15thPNHRSCelebration@gmail.com')->send(new ConfirmRegistration($visitor, $event));
		} catch(Exception $e){
			
		}

		Session::put('errmsg', 'Registration Complete. A confirmation email has been sent to the email address you have provided.');
		return redirect('/');
	}

	public function eticket(Request $request, $code){
		
		$msg = '';

		$event = \App\Event::where('event_active', 1)->first();
		if (!$event){
			$msg = 'No active events are taking place.';
			Session::put('errmsg', $msg);
			return view('prereg.noevent')->with(['msg' => $msg]);
		}

		$visitor = \App\VWVisitor::where([
			['vis_code', '=', $code], 
			['event_id', '=', $event->event_id]
		])->first();

		if (!$visitor){
			$msg = 'Please register to the event.';
			Session::put('errmsg', $msg);
			return redirect('/');
		}

		$message = '';

		return view('prereg.eticket')->with(compact('event', 'visitor', 'message'));
	}

	public function cancel(){
		return redirect('/');
	}

	public function finished(){
		return redirect('/');
	}

	public function getNewBarcode(){
		$eid = 0;

		$event = \App\Event::where('event_active', 1)->first();

		if ($event){
			$eid = $event->event_id;
		}

		$row = \App\Barcode::where('event_id', $eid)->orderBy('barcode_batch', 'DESC')->orderBy('barcode_serial', 'DESC')->first();
		
		$batch = 0;
		$serial = 0;

		if ($row){
			$batch = $row->barcode_batch;
			$serial = $row->barcode_serial;
		}
		$serial++;
		if ($serial > 9999){
			$batch++;
			$serial = 0;
		}
		$row = new \App\Barcode;

		$row->event_id = $eid;
		$row->barcode_batch = $batch;
		$row->barcode_serial = $serial;
		$row->save();

		$res = array();
		$res['batch'] = $batch;
		$res['serial'] = $serial;
		return $res;
	}

	public function test($id){
		$event = \App\Event::where('event_active', 1)->first();
		if (!$event){
			return redirect('/');
		}

		$visitor = \App\VWVisitor::where('vis_id', $id)->first();
		if (!$visitor){
			return redirect('/');
		}

		return view('prereg.registrationmail')->with([
			'visitor' => $visitor,
			'event' => $event,
			'barcode' => $visitor->vis_code,
			]);

	}

	public function get_provinces(Request $request){
		$id = $request->get('id');
		$provinces = \App\Province::where('regionId', $id)
				->orderBy('name','ASC')
				->get();
		$output='<option value>Please Select</option>';
		foreach ($provinces as $prov) {
			$output .= '<option value="'.$prov->id.'">'.$prov->name.'</option>';
		}
		return $output;
	}
	
	public function get_municipality(Request $request){
		$id = $request->get('id');
		$municipality = \App\Municipality::where('provinceId', $id)
				->orderBy('name','ASC')
				->get();
		$output='<option value>Please Select</option>';
		foreach ($municipality as $mun) {
			$output .= '<option value="'.$mun->id.'">'.$mun->name.'</option>';
		}
		return $output;
	}

}
