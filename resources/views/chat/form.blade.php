<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<!-- Scripts -->
    <script src="{{ elixir('js/app.js') }}"></script>
</head>
<body>
    <div class=" card-box">
        <div class="panel-body">
            {!! Form::open(['class' => 'form-horizontal', 'method' => 'POST', 'id' => 'sse-form']) !!}
                {!! Form::hidden('user_id', @$user_id, ['id' => 'inputUserId', 'class' => "form-control"]) !!}
                {!! Form::text('content', null, ['id' => 'inputContent', 'class' => "form-control"]) !!}
                <button id="btn-sent" class="btn btn-lg btn-login btn-block" type="submit">Sent</button>
            {!! Form::close() !!}
            <br />
        </div>
        <div class="chat-content" style="width: 400px; border: 1px solid #ccc; padding: 20px; float: left;"></div>
    </div>

    <script type="text/javascript">
        $('#sse-form').on('submit', function (e) {
            e.preventDefault();
            var url = '{{ URL::route('chat.create') }}';
            $.ajax({
                url: url,
                data: {
                    "_token"   : "{{ csrf_token() }}",
                    'content'  : $('#inputContent').val(),
                    'user_id'  : $('#inputUserId').val()
                },
                type: 'POST',
                success: function (data) {
                    if(!data.success){
//                        alert('Can not sent, pls try again!');
                    }
                    $('#inputContent').val('');
                }
            });
        });

        //sse get content
        if(typeof(EventSource) !== "undefined") {
            var source = new EventSource("/chat/get");
            source.onmessage = function(event) {
                if(event.data != undefined && event.data.length > 0) {
                    var contents    = JSON.parse(event.data);
                    var user_id     = $('#inputUserId').val();
                    for(var i=0; i<contents.length; i++) {
                        //check exist for view
                        if($('.chat-content p.'+contents[i][0]).length <= 0) {
                            if(user_id == contents[i][1]) {
                                $('.chat-content').append('<p style="text-align: right;" class="' + contents[i][0] + '">' + contents[i][2] + '<b> :me</b></p>');
                            } else {
                                $('.chat-content').append('<p class="' + contents[i][0] + '"><b>' + contents[i][1] + ':</b> ' + contents[i][2] + '</p>');
                            }
                        }
                    }
                }
            };
        } else {
            alert ("Sorry, your browser does not support server-sent events...");
        }
    </script>
</body>
</html>