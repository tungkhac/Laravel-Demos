<?php

namespace App\Http\Controllers;

use App\Repositories\ChatRepository;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Response;
use Symfony\Component\HttpFoundation\StreamedResponse;

class ChatController extends Controller
{
    protected $repChat;
    protected $user_id;
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(
        ChatRepository $chat
    )
    {
        $this->repChat = $chat;
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $user_id_cookie = $request->cookie('user_id');
        if($user_id_cookie) {
            $this->user_id = $user_id_cookie;
        } else {
            $this->user_id = time();
        }
        return response(view('chat/form')->with([
            'user_id' => $this->user_id,
        ]))->withCookie(cookie()->make('user_id', $this->user_id));
    }

    public function create(Request $request)
    {
        if($request->has('content') && $request->has('user_id')) {
            $content = $request->get('content');
            $user_id = $request->get('user_id');
            $user_id = '_'.$user_id.'_';
            $inputs = [
                'content' => $content,
                'read_flg' => ''
            ];
            $this->repChat->store($inputs);
            return Response::json(array('success' => true), 200);
        }
        return Response::json(array('success' => false, 'message' => 'Sent error'), 200);
    }

    public function get(Request $request)
    {
        $response = new StreamedResponse();
        $response->headers->set('Content-Type', 'text/event-stream');
        $response->headers->set('Cache-Control', 'no-cache');
        $this->user_id = $request->cookie('user_id');
        $response->setCallback(
            function() {
                $user_id = '_'.$this->user_id.'_';
                $message_unread = $this->repChat->getUnRead($user_id);
                $content_array = [];
                foreach ($message_unread as $message) {
                    $content_array[] = [
                        $message->id,
                        $message->content
                    ];
                    $chat = $this->repChat->getById($message->id);
                    $inputs = [
                        'read_flg' => $chat->read_flg.$user_id
                    ];
                    $this->repChat->update($chat, $inputs);
                }
                $content_array = json_encode($content_array);
                echo "retry: 500\n\n"; // no retry would default to 3 seconds.
                echo "data: $content_array\n\n";
                ob_flush();
                flush();
            });
        $response->send();
    }

    public function index2(Request $request)
    {
        $this->user_id = time();
        return view('chat/form2')->with([
            'user_id' => $this->user_id,
        ]);
    }
}
