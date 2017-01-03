<?php
/**
 * Created by TungNK.
 * User: nguyen.khac.tung
 * Date: 10/05/2016
 * Time: 8:29 AM
 */

return [
    'per_page'  => [5, 10, 15, 20],
    'authority' => [
        'client'                => 1,
        'admin'                 => 2
    ],
    'active'    => [
        'enable'                => 1,
        'disable'               => 2,
    ],
];

//call a constant: config('constants.ad_service')