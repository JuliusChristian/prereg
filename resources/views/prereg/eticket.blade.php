<!DOCTYPE html>
<html>
<head>
    <meta content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>DOST Calabarzon - {{ $event->event_title }}</title>
</head>
<link href="https://fonts.googleapis.com/css?family=Roboto|Roboto+Condensed|Roboto+Mono" rel="stylesheet">
<style type="text/css">
	html, body{
		font-family: 'Roboto', sans-serif;
		padding: 0;
		margin: 10px;
		border: 0;
		width: 750px;
	}

	.barcode{
		font-family: 'Roboto Mono', monospace;
		display: inline-block;
		text-align: center;
		margin: 0 auto;
		border: 1px dashed #666666;
		padding: 8px;

	}

	.event-title{
		font-family: 'Roboto Condensed', sans-serif;
		font-size: 12px;
	}

	.barcode-numbers{
		font-family: 'Roboto Mono', monospace;
		font-size: 12px;
	}

</style>
<body>
<?php
$gen = new \Picqer\Barcode\BarcodeGeneratorPNG();
$barcode = $visitor->vis_code;
//$imgdata = $gen->getBarcode($barcode, $gen::TYPE_CODE_128);
//data:image/png;base64,<?php base64_encode($gen->getBarcode($barcode, $gen::TYPE_CODE_128))
//$message->embedData($imgdata, 'registration-barcode.png')
$imgdata = $gen->getBarcode($barcode, $gen::TYPE_CODE_128);

$savepath = realpath(public_path('uploads/barcodes/')).DIRECTORY_SEPARATOR.$barcode.'.png';

file_put_contents($savepath, $imgdata);
?>
<img src="{{ asset('/images/dost_header1.png') }}">
<br>
<br>
Greetings,
<br>
<br>
You have been registered to the <strong>{{ $event->event_title }}</strong>
<br>
from <strong>{{ date('F j, Y', strtotime($event->event_from)) }}</strong> to <strong>{{ date('F j, Y', strtotime($event->event_to)) }}</strong>
<br>
<br>
<h4>Registration Details : </h4>
<div>{{ $visitor->vis_fname }}&nbsp;{{ $visitor->vis_lname }}</div>
<div>{{ $visitor->vis_age }} yrs. old</div>
<div>{{ $visitor->gender_name }}</div>
<div>{{ $visitor->civil_name }}</div>
<div>{{ $visitor->vis_company }}</div>
<div>{{ $visitor->class_name }}</div>
<?php
if ($visitor->vis_day > 0){
?>
<div>Planned to attend on the {{ $visitor->vis_day }}</div>
<?php
}
?>
<br>
<div class="barcode">
	<div class="barcode-numbers">
		{{ $barcode }}
	</div>
	<div>
		<img src="{!! asset('uploads/barcodes/'.$barcode.'.png') !!}">
	</div>
</div>

<br>
<br>
<strong>Please print this e-ticket or have a screenshot of this in your mobile devices and present it at the venue.</strong>
<br>
<br>
Thank you,
<br>
<br>
Department of Science and Technology Region - III
<br>
DM Government Center, Maimpis,
City of San Fernando, Pampanga
<br>
<a href="http://home.dost3.ph">http://home.dost3.ph</a>
<br>
<br>
</body>
</html>