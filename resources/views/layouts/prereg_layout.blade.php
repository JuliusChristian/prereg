<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <title>Event Preregistration</title>
    <link rel="shortcut icon" href="{{ asset('images/dost_logo.png')}}" />
    <link rel="stylesheet" type="text/css" href="{{ asset('css/fonts.css') }}"/>
    <link rel="stylesheet" type="text/css" href="{{ asset('css/bootstrap.min.css?v=4.1.1') }}"/>
    <link rel="stylesheet" type="text/css" href="{{ asset('css/animate.min.css') }}"/>
    <link rel="stylesheet" type="text/css" href="{{ asset('css/fontawesome-all.min.css') }}"/>
    <link rel="stylesheet" type="text/css" href="{{ asset('css/public.css?v=2.0.1') }}"/>
</head>
<body>
    <div class="page-wrapper">
        <nav class="navbar navbar-expand-sm navbar-light bg-light">
            <div class="container">
                <a class="navbar-brand" href="{{ url("/") }}" title="Event Preregistration">Event Preregistration</a>
            </div>
        </nav>
        <div class="content-wrapper">
            @yield('content')
        </div>
        <footer class="footer">
            <div class="copyright">&copy; <script>
                    document.write(new Date().getFullYear())
                </script> by MIS Unit of <a href="http://home.dost3.ph" target="_blank">DOST Region III</a>
            </div>
        </footer>
    </div>
    <!-- Scripts -->    
    <script src="{{ asset('js/jquery.min.js') }}"></script>
    <script src="{{ asset('js/popper.min.js') }}"></script>
    <script src="{{ asset('js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('js/bootstrap-notify.min.js') }}"></script>
    <script src="{{ asset('js/moment.min.js') }}"></script>
    <script src="{{ asset('js/bootstrap-datetimepicker.min.js') }}"></script>
    <script src="{{ asset('js/app.js') }}"></script>

    <script type="text/javascript">
        $('select#vis_province').on('change', function(){
            // alert(this.value);
            var _token = $('input[name="_token"]').val();
             $.ajax({
                type:"POST",
                url : "{{url('/get_municipality')}}",
                data : {id:$(this).val(), _token:_token},
                async: false,
                success : function(response) {
                   $('select#vis_municipality').html(response);
                },
                error: function() {
                    console.log('Error occured');
                }
            });
        });
        $('select#region_id').on('change', function(){
            // alert(this.value);
            var _token = $('input[name="_token"]').val();
             $.ajax({
                type:"POST",
                url : "{{url('/get_provinces')}}",
                data : {id:$(this).val(), _token:_token},
                async: false,
                success : function(response) {
                   $('select#vis_province').html(response);
                },
                error: function() {
                    console.log('Error occured');
                }
            });
        });
    </script>

</body>
</html>