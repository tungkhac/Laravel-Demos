<?php

namespace App\Repositories\Hanoi;
use App\Repositories\Hanoi\BaseHaNoiRepository;
use App\Hanoi\Site;
use Illuminate\Support\Facades\Config;

class SiteRepository extends BaseHaNoiRepository
{
	/**
	 * Create a new UserRepository instance.
	 *
   	 * @param  App\User $user
	 * @return void
	 */
	public function __construct(Site $site)
	{
        parent::__construct();
        $this->model = $site;
    }


    /**
	 * Save the User.
	 *
	 * @param  App\User $user
	 * @param  Array  $inputs
	 * @return void
	 */
  	private function save($site, $inputs)
	{
        $site->url   =  $inputs['url'];
        $site->service   = $inputs['service'];
        if(@$inputs['filename']) {
            $site->filename   = $inputs['filename'];
        }
        $site->save();
	}

    /**
     * Create a company.
     *
     * @param  array  $inputs
     * @param  int    $confirmation_code
     * @return App\Site
     */
    public function store($inputs, $user_id)
    {
        $site = new $this->model;
        $site->user_id   =  $user_id;
        $site->key =  bin2hex(openssl_random_pseudo_bytes(16, $user_id));
        $this->save($site, $inputs);
    }

	/**
	 * Update a user.
	 *
	 * @param  array  $inputs
	 * @param  App\Site site
	 * @return void
	 */
	public function update($site, $inputs)
	{
		$this->save($site, $inputs);
	}

    public function updateAccount($user, $inputs)
    {
        if(isset($inputs['password'])){
            $user->password = bcrypt($inputs['password']);
        }
        $this->save($user, $inputs);
    }

    public function getAll($keyword, $login_id, $get_user_id, $isAdmin, $perPage)
    {
        $model = new $this->model;
        if(!empty($keyword)){
            $model = $model->where(function($q) use ($keyword) {
                $q->where('url', 'like', "%{$keyword}%");
            });
        }
        if(!$isAdmin){
            $model = $model->where('user_id', $login_id);
        }else if($get_user_id){
            $model = $model->where('user_id', $get_user_id);
        }
        $model = $model->orderBy('user_id', 'ASC')->orderBy('url', 'ASC');
        $model = $model->select('id','url', 'service');
        $data  = $model->paginate($perPage);
        return $data;
    }

    public function getSiteById($site_id)
    {
        $model = new $this->model;

        return $model->select('*')
            ->join('users', 'sites.user_id', '=', 'users.id')
            ->where('sites.id', '=', $site_id)->first();
    }
}
