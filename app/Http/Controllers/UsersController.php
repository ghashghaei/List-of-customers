<?php

namespace App\Http\Controllers;

use App\Models\Users;
use Illuminate\Http\Request;

class UsersController extends Controller
{
    public function index()
    {
        $users = Users::all();
        $PageData = [
            'title' => 'List Page' ,
            'users' =>$users
        ];



        return view('users',$PageData);
    }
}
