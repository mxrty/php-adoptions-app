@extends('layouts.app')

@section('content')
    <h1>Adoptions</h1>
    @if(count($adoptions) > 0)
        @foreach ($adoptions as $adoption)
            <div class="card card-body bg-light">
                <h3><a href="adoptions/{{$adoption->id}}">Adoption request {{$adoption->id}}</a></h3>
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
                <small>Last updated: {{$adoption->updated_at}}</small>
            </div>
        @endforeach
        {{$adoptions->links()}}
    @else
        <p>No adoptions</p>
    @endif
@endsection