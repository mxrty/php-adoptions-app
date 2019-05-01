@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Home</div>
                <div class="panel-body">
                        <a href="/posts/create" class="btn btn-primary">Create Post</a>
                        <h3>Your Posts</h3>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
