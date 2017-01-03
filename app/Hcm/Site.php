<?php

namespace App\Hcm;

use App\Hcm\BaseHcm;
use Illuminate\Database\Eloquent\SoftDeletes;

class Site extends BaseHcm
{
    use SoftDeletes;
    protected $dates = ['deleted_at'];

}
