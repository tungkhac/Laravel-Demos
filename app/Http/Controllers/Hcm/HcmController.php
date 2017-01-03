<?php

namespace App\Http\Controllers\Hcm;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Repositories\Hcm\SiteRepository;

class HcmController extends Controller
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
        parent::__construct();
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
        return view('hcm/home')->with([
            'sites' => $sites,
        ]);
    }
}
