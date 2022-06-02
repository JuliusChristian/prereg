@extends('layouts.prereg_layout')
@section('content')
@if (strlen($msg) > 0)
<div class="alert alert-info">
	{{ $msg }}
</div>
@endif

<div class="text-center">
	<h3>
		There are no active events taking place at this time.
		<br>
		Please try again later...
	</h3>
</div>

@endsection
