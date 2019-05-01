@extends('layouts.app')

@section('content')
    <h1>New Adoption Request</h1>
    {{ Form::open(['action' => 'AdoptionsController@store', 'method' => 'POST']) }}
        <div class="form-group">
            {{Form::label('message', 'Let us know any details about your adoption request:')}}
            {{Form::textarea('message', '', ['id' => 'article-ckeditor', 'class' => 'form-control', 'placeholder' => 'Write your message here'])}}
        </div>
        {{ Form::hidden('post_id', $post_id) }}
        {{Form::submit('Submit', ['class'=>'btn btn-primary'])}}
    {{ Form::close() }}
@endsection