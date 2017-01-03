<?php

namespace App\Http\Controllers\Hanoi;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Repositories\Hanoi\SiteRepository;
use App\Repositories\UserRepository;
use Illuminate\Support\Facades\Config;

class HanoiController extends Controller
{
    protected $repSite;
    protected $repUser;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(
        SiteRepository $site,
        UserRepository $user
    )
    {
        $this->middleware('auth.subdomain', ['except' => ['test']]);
        $this->repSite     = $site;
        $this->repUser     = $user;
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user_id = Auth::user()->id;
        $sites = $this->repSite->getAllByField('user_id', $user_id);
        $users = $this->repUser->getAll2();
        return view('hanoi/home')->with([
            'sites' => $sites,
            'users' => $users,
        ]);
    }
}
