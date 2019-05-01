@extends('layouts.app')

@section('content')
    <a href="/posts" class="btn btn-secondary">Go Back</a>
    <h1>{{$post->name}}</h1>
    <img style="width:50%" src="/storage/images/{{$post->image}}">
    <div>
        Date of Birth: {{$post->dob}}
    </div>
    <div>
        Description:<br>
        {!!$post->description!!}
    </div>
    <hr>
    <small>Uploaded on: {{$post->created_at}}</small>
    <small>Last updated: {{$post->updated_at}}</small>
    <hr>
    @if(!Auth::guest())
        <a href="/posts/{{$post->id}}/adopt" class="btn btn-secondary">Adoption Request</a>
        @can('isAdmin')
        <a href="/posts/{{$post->id}}/edit" class="btn btn-secondary">Edit Post</a>
        {!!Form::open(['action' => ['PostsController@destroy', $post->id], 'method' => 'POST', 'class' => 'pull-right'])!!}
            {{Form::hidden('_method', 'DELETE')}}
            {{Form::submit('Delete', ['class' => 'btn btn-danger'])}}
        {!!Form::close()!!}
        @endcan
    @endif
@endsection