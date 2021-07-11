<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Db;
use Faker\Factory as Faker;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        foreach (range(1,100) as $item) {
            DB::table('users')->insert([
                'first_name' => $faker->firstName($gender = null) ,
                'last_name' => $faker->lastName() ,
                'email_address' => $faker->email() ,
                'registered_date' => $faker->date('Y-m-d') ,
            ]);
        }

    }
}
