<?php

namespace App\Repositories;

use App\Repositories\BaseRepository;
use App\Chat;

class ChatRepository extends BaseRepository
{
	/**
	 * Create a new UserRepository instance.
	 *
   	 * @param  App\Chat $chat
	 * @return void
	 */
	public function __construct(Chat $chat)
	{
		$this->model = $chat;
	}

    /**
     * Create a company.
     *
     * @param  array  $inputs
     * @param  int    $confirmation_code
     * @return App\Chat
     */
    public function store($inputs)
    {
        $chat = new $this->model;
//        $chat->user_id        = bcrypt($inputs['user_id']);
        $this->save($chat, $inputs);

        return $chat;
    }

	/**
	 * Save the User.
	 *
	 * @param  App\Chat $chat
	 * @param  Array  $inputs
	 * @return void
	 */
  	private function save($chat, $inputs)
	{
	    if(@$inputs['content']) {
            $chat->content           = $inputs['content'];
        }
        $chat->read_flg          = $inputs['read_flg'];
        $chat->save();
	}

	/**
	 * Update a user.
	 *
	 * @param  array  $inputs
	 * @param  App\Models\Chat $chat
	 * @return void
	 */
	public function update($chat, $inputs)
	{
		$this->save($chat, $inputs);
	}


    public function getUnRead($user_id)
    {
        $model = new $this->model;
        $model = $model->where('read_flg', 'not like', '%'.$user_id.'%')
            ->orWhereNull('read_flg');
        $model = $model->orderby('created_at');
        return $model->get();
    }
}
