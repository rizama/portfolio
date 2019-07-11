<!-- Stored in resources/views/child.blade.php -->

@extends('template_test')

@section('title', 'Page Title')

@section('sidebar')
    @parent

    <p>This is appended to the master sidebar.</p>
@endsection

@section('content')
    <p>This is my body content.</p>

    @component('alert')
        @slot('title')
            Forbidden
        @endslot

        <strong>Whoops!</strong> Something went wrong!
    @endcomponent
@endsection