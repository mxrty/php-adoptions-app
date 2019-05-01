@extends('layouts.app')

@section('content')
    <h1>Posts</h1>
    @if(count($posts) > 0)
        @foreach ($posts as $post)
            <div class="card card-body bg-light">
                <div class="row">
                <div class="col-md-3">
                <img style="width:100%" src="/storage/images/{{$post->image}}" class="rounded float-left" >
                </div>
                <div class="col-md-9">
                <h3><a href="/posts/{{$post->id}}">{{$post->name}}</a></h3>
                <div>Animal Type: {{$post->animal_type}}</div>
                @can('isAdmin')
                @if($post->owner_id!=0)
                    <p>Adopted by: User {{$post->owner_id}}</p>
                @endif
                @endcan
                <small>Last updated: {{$post->updated_at}}</small>
                </div>
                </div>
            </div>
        @endforeach
        {{$posts->links()}}
    @else
        <p>No posts</p>
    @endif
@endsection