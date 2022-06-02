@extends('layouts.prereg_layout')
@section('content')
@if (strlen($msg) > 0)
<div class="alert alert-info">
	{{ $msg }}
</div>
@endif

<div class="panel panel-default">
	<div class="panel-heading">
		<div class="clearfix">
			<h3 class="panel-title">Guests</h3>
		</div>
	</div>	
	<div class="panel-body">
		{!! Form::open(array('name' => 'search_form', 'url' => URL::to('guests'), 'class'=>'form-inline', 'role' => 'form')) !!}
		<div class="form-group">
			<div class="input-group input-group-sm">
				<input class="form-control" type="text" maxlength="255" name="q" id="q" value="{{ $q }}">
				<span class="input-group-btn">
					<input class="btn btn-default btn-sm" type="submit" value="Search" name="search-btn" id="search-btn">
				</span>
			</div>
		</div>
		{!! Form::close() !!}
	</div>
	<div class="table-responsive">
		<table class="table table-bordered table-condensed table-striped table-hover">
			<thead>
				<tr>
					<th class="text-center">#</th>
					<th width="100%" class="text-center">Name</th>
					<th class="text-center">Email</th>
					<th class="text-center">Age</th>
					<th class="text-center">Gender</th>
					<th class="text-center">Civil Status</th>
					<th class="text-center">Company/Institution</th>
					<th class="text-center">Classification</th>
				</tr>
			</thead>
			<tbody>
				<?php $i = 0; ?>
				@foreach($rows as $row)
				<?php $i++; ?>
				@include('prereg.guests_row', ['row' => $row, 'i' => $i])
				@endforeach
			</tbody>
		</table>
	</div>
	<div class="panel-footer clearfix">

	</div>
</div>

<div class="clearfix">
	<div class="pull-right">
		<?php echo $rows->render(); ?>
	</div>
</div>

@endsection