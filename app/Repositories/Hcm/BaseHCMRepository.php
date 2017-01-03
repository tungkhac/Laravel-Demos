<?php
namespace App\Repositories\Hcm;
use App\Repositories\BaseRepository;
use Illuminate\Support\Facades\Config;

class BaseHCMRepository extends BaseRepository {

    public function __construct()
    {
        Config::set('database.connections.mysql.database', env('DB_DATABASE_HCM'));
    }

}
