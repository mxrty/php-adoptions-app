@extends('layouts.app')

@section('content')
    <h1>Edit Post</h1>
    {{ Form::open(['action' => ['PostsController@update',$post->id], 'method' => 'POST']) }}
        <div class="form-group">
            {{Form::label('name', 'Name:')}}
            {{Form::text('name', $post->name, ['class' => 'form-control', 'placeholder' => 'Name'])}}
        </div>
        <div class="form-group">
            {{Form::label('animal_type', 'Animal Type:')}}
            {{Form::text('animal_type', $post->animal_type, ['class' => 'form-control', 'placeholder' => 'Animal Type'])}}
        </div>
        <div class="form-group">
            {{Form::label('dob', 'Date Of Birth:')}}
            {{Form::date('dob', $post->dob)}}
        </div>
        <div class="form-group">
            {{Form::label('description', 'Description:')}}
            {{Form::textarea('description', $post->description, ['id' => 'article-ckeditor', 'class' => 'form-control', 'placeholder' => 'Animal Description'])}}
        </div>
        <div class="form-group">
            {{Form::file('image')}}
        </div>
        {{Form::hidden('_method','PUT')}}
        {{Form::submit('Submit', ['class'=>'btn btn-primary'])}}
    {{ Form::close() }}
@endsection