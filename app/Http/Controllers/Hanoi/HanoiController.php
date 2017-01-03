<?php

namespace App\Http\Controllers\Hanoi;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Repositories\Hanoi\SiteRepository;
use Illuminate\Support\Facades\Config;

class HanoiController extends Controller
{
    protected $repSite;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(
        SiteRepository $site
    )
    {
        $this->middleware('auth.subdomain', ['except' => ['test']]);
        $this->repSite     = $site;
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
        return view('hanoi/home')->with([
            'sites' => $sites,
        ]);
    }
}
