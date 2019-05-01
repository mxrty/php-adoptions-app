@extends('layouts.app')

@section('content')
    <h1>Create Post</h1>
    {{ Form::open(['action' => 'PostsController@store', 'method' => 'POST','enctype' => 'multipart/form-data']) }}
        <div class="form-group">
            {{Form::label('name', 'Name:')}}
            {{Form::text('name', '', ['class' => 'form-control', 'placeholder' => 'Name'])}}
        </div>
        <div class="form-group">
            {{Form::label('animal_type', 'Animal Type:')}}
            {{Form::text('animal_type', '', ['class' => 'form-control', 'placeholder' => 'Animal Type'])}}
        </div>
        <div class="form-group">
            {{Form::label('dob', 'Date Of Birth:')}}
            {{Form::date('dob', '')}}
        </div>
        <div class="form-group">
            {{Form::label('description', 'Description:')}}
            {{Form::textarea('description', '', ['id' => 'article-ckeditor', 'class' => 'form-control', 'placeholder' => 'Animal Description'])}}
        </div>
        <div class="form-group">
            {{Form::file('image')}}
        </div>
        {{Form::submit('Submit', ['class'=>'btn btn-primary'])}}
    {{ Form::close() }}
@endsection