@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">Dashboard Ho Chi minh</div>

                    <div class="panel-body">
                        <p>You are logged in!</p>
                        <p>@php echo Auth::user()->id.': '.Auth::user()->name.' - '.Auth::user()->email; @endphp</p>
                        <p>Site list:</p>
                        @foreach($sites as $site)
                            <p>{{{ $site->url.' - '.$site->service }}}</p>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
