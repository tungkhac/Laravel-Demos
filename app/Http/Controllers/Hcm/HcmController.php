<?php

namespace App\Http\Controllers\Hcm;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Repositories\Hcm\SiteRepository;
use App\Repositories\UserRepository;

class HcmController extends Controller
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
        return view('hcm/home')->with([
            'sites' => $sites,
            'users' => $users,
        ]);
    }
}
