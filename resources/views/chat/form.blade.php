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
                {!! Form::hidden('user_id', @$user_id, ['id' => 'inputUserId', 'class' => "form-control"]) !!}
                {!! Form::text('content', null, ['id' => 'inputContent', 'class' => "form-control"]) !!}
                <button id="btn-sent" class="btn btn-lg btn-login btn-block" type="submit">Sent</button>
            <br />
        </div>
        <div class="chat-content">

        </div>
    </div>

    <script type="text/javascript">
        $('#btn-sent').on('click', function (e) {
            var url = '{{ URL::route('chat.create') }}';
            $.ajax({
                url: url,
                data: {
                    "_token"    : "{{ csrf_token() }}",
                    'content'  : $('#inputContent').val(),
                    'user_id'  : $('#inputUserId').val()
                },
                type: 'POST',
                success: function (data) {
                    if(!data.success){
                        alert('Can not sent, pls try again!');
                    }
                }
            });
        });

        //sse get content
        if(typeof(EventSource) !== "undefined") {
            var source = new EventSource("/chat/get");
            source.onmessage = function(event) {
                if(event.data != undefined && event.data.length > 0) {
                    var contents = JSON.parse(event.data);
                    for(var i=0; i<contents.length; i++) {
                        $('.chat-content').append('<p>'+contents[i]+'</p>');
                    }
                }
            };
        } else {
            alert ("Sorry, your browser does not support server-sent events...");
        }
    </script>
</body>
</html>