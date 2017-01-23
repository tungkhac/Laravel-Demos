## Per sub-domain a namespace
# Document for DEMO many sub-domain with many database using a Users table in common database


#### Let's start:

##### Step 1: Import database
Import database in db_backup/many_domain_many_db/ folder in root: 

DB main: laravel_test

2 sub DB: 

DB 1: laravel_test_hanoi

DB 2: laravel_test_hcm


##### Step 2: Create domain
Create a virtual domain (optional) and setting router as routes/web.php file

Here, I create 3 domain:

Base domain: laraveltest.local.vn

Sub domain 1: hanoi.laraveltest.local.vn

Sub domain 2: hcm.laraveltest.local.vn

##### Step 3: Add SESSION_DOMAIN to .env file
    SESSION_DOMAIN=.laraveltest.local.vn

This session can using for base and sub domain

##### Step 4: Create connections for sub-domain

Base domain will use mysql connection.

In .env file:

Add: 

    DB_DATABASE_HANOI=laravel_test_hanoi
    DB_DATABASE_HCM=laravel_test_hcm

In config/database.php, create new connections for per sub domain.

Ex:

    'hanoi' => [
        'driver' => 'mysql',
        'host' => env('DB_HOST', 'localhost'),
        'port' => env('DB_PORT', '3306'),
        'database' => env('DB_DATABASE_HANOI', 'forge'),
        'username' => env('DB_USERNAME', 'forge'),
        'password' => env('DB_PASSWORD', ''),
        'charset' => 'utf8',
        'collation' => 'utf8_unicode_ci',
        'prefix' => '',
        'strict' => true,
        'engine' => null,
    ],

    'hcm' => [
        'driver' => 'mysql',
        'host' => env('DB_HOST', 'localhost'),
        'port' => env('DB_PORT', '3306'),
        'database' => env('DB_DATABASE_HCM', 'forge'),
        'username' => env('DB_USERNAME', 'forge'),
        'password' => env('DB_PASSWORD', ''),
        'charset' => 'utf8',
        'collation' => 'utf8_unicode_ci',
        'prefix' => '',
        'strict' => true,
        'engine' => null,
    ],


##### Step 5: Namespace controllers, model
Here, per sub-domain will use a namesspace, a folder model, a repositories, a request..

In Base model each sub-domain will change connections as below:

Ex: BaseHanoi model
   
    //BaseHanoi file
   
    class BaseHanoi extends Model
    {
        protected $connection = 'hanoi';
    }

Per model will extends this base model

Ex: Site file extend from BaseHanoi
       
    class Site extends BaseHanoi
    {

    
    }


This is test and you can customize follow your idea.

Goodluck!

## License

Nguyễn Khắc Tùng
Hà Nội 01/03/2017