@extends('layouts.app')

@section('content')
    <h1>Edit Adoption Request</h1>
    {{ Form::open(['action' => ['AdoptionsController@update',$adoption->id], 'method' => 'POST']) }}
        @can('isDefault')
        <div class="form-group">
            {{Form::label('message', 'Message:')}}
            {{Form::textarea('message', $adoption->message, ['id' => 'article-ckeditor', 'class' => 'form-control', 'placeholder' => 'Write your message here'])}}
            {{Form::hidden('approved', $adoption->approved)}}
        </div>
        @endcan
        @can('isAdmin')
        <div class="form-group">
            {{Form::label('approved', 'Status:')}}
            {{Form::select('approved', array('A' => 'Approved', 'D' => 'Denied', 'U' => 'Under Review'), $adoption->approved)}}
            {{Form::hidden('message', $adoption->message)}}
        </div>
        @endcan
        {{Form::hidden('_method','PUT')}}
        {{Form::submit('Submit', ['class'=>'btn btn-primary'])}}
    {{ Form::close() }}
@endsection