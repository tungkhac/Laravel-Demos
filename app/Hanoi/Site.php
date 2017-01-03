<?php

namespace App\Hanoi;

use App\Hanoi\BaseHanoi;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Site extends BaseHanoi
{
    use SoftDeletes;
    protected $dates = ['deleted_at'];

}
