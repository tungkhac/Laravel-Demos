<?php
namespace App\Repositories\Hanoi;
use App\Repositories\BaseRepository;
use Illuminate\Auth\EloquentUserProvider;
use Illuminate\Support\Facades\Config;

class BaseHaNoiRepository extends BaseRepository {

    public function __construct()
    {
        Config::set('database.connections.mysql.database', env('DB_DATABASE_HANOI'));
    }

}
