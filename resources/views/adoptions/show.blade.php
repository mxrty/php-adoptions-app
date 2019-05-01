@extends('layouts.app')

@section('content')
    <a href="/adoptions" class="btn btn-secondary">Go Back</a>
    <h1>Adoption request for <a href="/posts/{{$post->id}}">{{$post->name}}</a></h1>
    <div>
        @switch($adoption->approved)
            @case('A')
                <span>Adoption Request Status: Approved</span>
                @break
            @case('D')
                <span>Adoption Request Status: Denied</span>
                @break
            @default
                <span>Adoption Request Status: Under Review</span>
            @endswitch
    </div>
    <hr>
    <div>
        {!!$adoption->message!!}
    </div>
    @can('isAdmin')
    <hr>
    <div>
        <h2>User Information: </h2><br>
        Name: {{$user->name}}<br>
        Email: {{$user->email}}
    </div>
    @endcan
    <hr>
    <small>Created at: {{$adoption->created_at}}</small>
    <small>Last updated: {{$adoption->updated_at}}</small>
    <hr>
    <a href="/adoptions/{{$adoption->id}}/edit" class="btn btn-secondary">Edit Adoption Request</a>
@endsection