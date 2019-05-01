@extends('layouts.app')

@section('content')
<div class="jumbotron text-center">
        <h1>Welcome To Aston Animal Sanctuary!</h1>
        @guest
        <p>Log in or Register to begin the adoption process and give an animal a second chance.</p>
        <p><a class="btn btn-primary btn-lg" href="/login" role="button">Login</a> <a class="btn btn-success btn-lg" href="/register" role="button">Register</a></p>
        @else
        <p>Click on posts to browse the animals that are available for adoption</p>
        <p><a class="btn btn-secondary btn-lg" href="/posts">Posts</a></p>
        @endguest
    </div>
@endsection