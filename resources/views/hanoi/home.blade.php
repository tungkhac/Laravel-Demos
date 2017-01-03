@extends('layouts.app')

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">Dashboard Hà Nội</div>

                <div class="panel-body">
                    <p>You are logged in!</p>
                    <p>@php echo 'ID: '.Auth::user()->id.': '.Auth::user()->name.' - '.Auth::user()->email; @endphp</p>
                    <p>Site list:</p>
                    @foreach($sites as $site)
                        <p>{{{ $site->url.' - '.$site->service }}}</p>
                    @endforeach
                </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">Danh sach users</div>
                <div class="panel-body">
                    <table class="table  table-hover general-table practice">
                        <thead>
                        <tr role="row">
                            <th class="clientNo">No.</th>
                            <th class="clientName">{{{ trans('field.name') }}}</th>
                            <th class="clientStatus">{{{ trans('field.email') }}}</th>
                            <th class="clientStatus center">{{{ trans('field.company') }}}</th>
                            <th class="clientStatus center">{{{ trans('field.authority') }}}</th>
                        </tr>
                        </thead>
                        @if($users && $users->count() > 0)
                            <tbody>
                            @foreach($users as $i => $user)
                                <tr>
                                    <td><p>{{{ $i + 1 }}}</p></td>
                                    <td><p class="subject_name">{{{ $user->name }}}</p></td>
                                    <td><p>{{{ $user->email }}}</p></td>
                                    <td><p>{{{ $user->company_name }}}</p></td>
                                    <td class="center"><p>{{{ $user->authority }}}</p></td>
                                </tr>
                            @endforeach
                            </tbody>
                        @else
                            <tr>
                                <td colspan="7"><h5> {{{ trans('message.common_no_result')}}}</h5></td>
                            </tr>
                        @endif
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
