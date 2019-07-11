<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title>@yield('title')</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="{{ asset('fonts/poppins.css')}}" rel="stylesheet">
    <link href="{{ asset('fonts/opensans.css')}}" rel="stylesheet">
    <link rel="shortcut icon" href="{{ asset('images/icon.ico') }}" type="image/x-icon">

    <!-- Template CSS Files -->
    <link rel="stylesheet" type="text/css" href="{{ asset('css/font-awesome.min.css')}}" />
    <link rel="stylesheet" type="text/css" href="{{ asset('css/jquery.animatedheadline.css')}}" />
    <link rel="stylesheet" type="text/css" href="{{ asset('css/materialize.min.css')}}" />
    <link rel="stylesheet" type="text/css" href="{{ asset('css/style.css')}}" />
    <link rel="stylesheet" type="text/css" href="{{ asset('css/skins/yellow.css')}}" />
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <!-- Template JS Files -->
    @stack('js')

</head>

<body class="dark">
    <!-- Preloader Start -->
    <div id="loader-wrapper">
        <div id="loader"></div>
        <div class="loader-section section-left"></div>
        <div class="loader-section section-right"></div>
    </div>
    <!-- Preloader Ends -->
    <!-- Wrapper Starts -->
    <div class="wrapper">
        @yield('content')
    </div>
    <!-- Wrapper Ends -->

    <!-- Template JS Files -->
    <script src="{{ asset('js/jquery-2.2.4.min.js')}}"></script>
    <script src="{{ asset('js/jquery.animatedheadline.js')}}"></script>
    <script src="{{ asset('js/boxlayout.js')}}"></script>
    <script src="{{ asset('js/materialize.min.js')}}"></script>
    <script src="{{ asset('js/jquery.hoverdir.js')}}"></script>
    <script src="{{ asset('js/custom.js')}}"></script>
</body>

</html>