<?php

namespace App\Http\Controllers;

use App\User;
use App\Storesecret;
use Illuminate\Http\Request;
//use Illuminate\Support\Facades\DB;
use DB;

class PassportController extends Controller
{
    //

    public $successStatus = 200;

    public function register(Request $request)
    {

    	$this->validate($request, [
            'name' => 'required|min:3',
            //'email' => 'required|email|unique:users',
            //'password' => 'required|min:6',
        ]);
 
        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => bcrypt($request->password)
        ]);
 
        $token = $user->createToken('terminator')->accessToken;
 
        return response()->json(['token' => $token], 200);

    }

    public function getServerKey(Request $request)
    {
        $credentials = [
            'email' => $request->email,
            'password' => $request->password,
            'name'=> $request->name
        ];
 
        if (auth()->attempt($credentials)) {
            $token = auth()->user()->createToken('terminator')->accessToken;
            return response()->json(['token' => $token], 200);
        } else {
            return response()->json(['error' => 'UnAuthorised'], 401);
        }


    }

    public function storeSecret(Request $request)
    {

        //print_r("hell");
       
        $user = DB::table('oauth_access_tokens')->where('user_id','1')->first();
        $secret=$user->name;
        
        $credentials = [
            'email' => $request->email,
            'password' => $request->password,
            'name'=> $request->name
        ];
 
        if (auth()->attempt($credentials)) {
            $token = auth()->user()->createToken('terminator')->accessToken;

            $xx=auth()->user()->token();

            //return response()->json(['token' => $xx], 200);
        } else {
            //return response()->json(['error' => 'UnAuthorised'], 401);
        }

        $user = Storesecret::create([
            'name' => $request->name,
            'secretName' => $secret,
            'encryptedSecret' => $token
        ]);

         return response()->json("save records", 200);
    }

    public function details(Request $request)
    {
        $user =auth()->user(); 

      $token='Bearer '.$request->bearerToken();
      $request->header('Authorization',$token);

      return response()->json(['user' => auth()->user()], 200);
        //return response()->json(['user' => auth()->user()], 200);
    }
}
