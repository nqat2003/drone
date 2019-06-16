<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class Test extends Controller
{

	public function TestMap(){
		return view('test.test');
	}
	public function PostTestMap(Request $request)
	{	
		$lat    = $request->address_latitude;
		$long   = $request->address_longitude;
		$name 	= $request->address_address;
		return view('test.test', compact('lat', 'long','name'));
	}
}
