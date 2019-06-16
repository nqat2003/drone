<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    public function addNewItem(){
    	$categories = DB::table('categories')->get();
    	return view('frontend.add_item',['categories' => $categories]);
    }
    public function home(){
    	$cities = DB::table('city')->whereIn('city',['hcmcity','Hanoi','Danang'])->get();
    	$categories = DB::table('categories')->get();
    	$dn = DB::table('items')->where('status','1')->where('address','like','%Đà Nẵng%')->count();
    	$hn = DB::table('items')->where('status','1')->where('address','like','%Hà Nội%')->count();
    	$sg = DB::table('items')->where('status','1')->where('address','like','%Hồ Chí Minh%')->count();
    	$itemnews = DB::table('items')->where('status','1')->orderBy('id','desc')->take(5)->get();
    	return view('frontend.index',['cities' => $cities,'categories' => $categories,'dn' => $dn,'hn' => $hn,'sg' => $sg,'itemnews' => $itemnews]);
    }
    public function userAddItem(Request $re){
    	$re->validate([
    		'image' => 'required|file|max:1024',
    	]);
    	$fileName = "fileName".time().'.'.request()->image->getClientOriginalExtension();

    	$re->image->storeAs('itemimage',$fileName);
    	$username = $re->user_name;
    	$itemname = $re->item_name;
    	$categoryID = $re->category; 
    	$address = $re->address_address;
    	$lat = $re->address_latitude;
    	$lng = $re->address_longitude;
    	$phone = $re->user_phone;
    	$des = $re->item_description;
    	
    	$id = DB::table('users')->insertGetId([
    		'rawname' => $username, 
    		'phone' => $phone
    	]);
    	
    	DB::table('items')->insert([
    		'name' => $itemname, 
    		'categoryID' => $categoryID,
    		'image' => $fileName,
    		'description' => $des,
    		'userID' => $id,
    		'address' => $address,
    		'lat' => $lat,
    		'lng' => $lng
    	]);
    	return back()
    	->with('success','Bạn đã upload thành công. Tích đức +1 !!!');
    }
    public function getItemsFromSearch(Request $re) {
    	$cities = DB::table('city')->whereIn('city',['hcmcity','Hanoi','Danang'])->get();
        $districts = DB::table('districts')->get();
        $wards = DB::table('wards')->get();
        $city = "Đà Nẵng";
        $id = $re->id;
        if ($id == 7) {
            $city = $re->city == null ? "Đà Nẵng" : $re->city;
            $dis = $re->dis == null ? "" : $re->dis;
            $results = DB::table('items')
            ->join('categories','items.categoryID','=','categories.id')
            ->join('users','items.userID','=','users.id')
            ->where('status','1')
            ->where('address','like','%'.$dis.'%'.$city.'%')
            ->select('items.*','categories.catename','users.rawname','users.phone')
            ->get();
            return view('frontend.view',['results' => $results,'districts' => $districts,'wards' => $wards ,'cities' => $cities,'id'=> $id]);
        }
        if ($id == 0){
            $id = 7;
            $results = DB::table('items')
                    ->join('categories','items.categoryID','=','categories.id')
                    ->join('users','items.userID','=','users.id')
                    ->select('items.*','categories.catename','users.rawname','users.phone')
                    ->get();
            return view('frontend.view',['results' => $results,'districts' => $districts,'wards' => $wards ,'cities' => $cities,'id' => $id]);
        }
    	if ($id != NULL) {
    		$city = $re->city == null ? "Đà Nẵng" : $re->city;
            $dis = $re->dis == null ? "" : $re->dis;
    		$results = DB::table('items')
    		->join('categories','items.categoryID','=','categories.id')
    		->join('users','items.userID','=','users.id')
            ->where('status','1')
    		->where('categoryID','=',$id)
    		->where('address','like','%'.$dis.'%'.$city.'%')
    		->select('items.*','categories.catename','users.rawname','users.phone')
    		->get();
    		return view('frontend.view',['results' => $results,'districts' => $districts,'wards' => $wards ,'cities' => $cities,'id'=> $id]);
    	}else{
            $id = 7;
    		$keyword = $re->keyword;
    		$results = DB::table('items')
    		->join('categories','items.categoryID','=','categories.id')
    		->join('users','items.userID','=','users.id')
            ->where('status','1')
    		->where('name','like','%'.$keyword.'%')
    		->orWhere('address','like','%'.$keyword.'%')
    		->orWhere('description','like','%'.$keyword.'%')
    		->select('items.*','categories.catename','users.rawname','users.phone')
    		->get();	
    		return view('frontend.view',['results' => $results,'districts' => $districts,'wards' => $wards ,'cities' => $cities, 'id' => $id]);
    	}
    	
    	
    }
    public function getItems($id = null, $city = 'Danang'){
    	$cities = DB::table('city')->whereIn('city',['hcmcity','Hanoi','Danang'])->get();
        $districts = DB::table('districts')->get();
        $wards = DB::table('wards')->get();
    	if (empty($id)){
    		$results = DB::table('items')
    					->join('categories','items.categoryID','=','categories.id')
    					->join('users','items.userID','=','users.id')
    					->select('items.*','categories.catename','users.rawname','users.phone')
                        ->where('status','1')
    					->where('address','like','%'.$city.'%')
    					->get();
    		return view('frontend.view',['results' => $results, 'districts' => $districts,'wards' => $wards ,'cities' => $cities]);
    	}
    	$results = DB::table('items')
    				->join('categories','items.categoryID','=','categories.id')
    				->join('users','items.userID','=','users.id')
                    ->where('status','1')
    				->where('categoryID','=',$id)
    				->orWhere('address','like','%'.$city.'%')
    				->select('items.*','categories.catename','users.rawname','users.phone')
    				->get();
    	return view('frontend.view',['results' => $results, 'districts' => $districts,'wards' => $wards ,'cities' => $cities,'id' => $id]);
    }
    public function getItemsFromCity($city) {
    	$cities = DB::table('city')->whereIn('city',['hcmcity','Hanoi','Danang'])->get();
        $districts = DB::table('districts')->get();
        $wards = DB::table('wards')->get();
    	$results = DB::table('items')
    					->join('categories','items.categoryID','=','categories.id')
    					->join('users','items.userID','=','users.id')
                        ->where('status','1')
    					->select('items.*','categories.catename','users.rawname','users.phone')
    					->where('address','like','%'.$city.'%')
    					->get();
    		return view('frontend.view',['results' => $results, 'districts' => $districts,'wards' => $wards ,'cities' => $cities]);
    }
    public function getConfirmedItems(){
    	$items = DB::table('items')
    			->join('users','items.userID','=','users.id')
    			->select('items.*','users.rawname','users.phone')
                ->where('status','1')
    			->get();
    	$images = DB::table('items')
    			->select(array('image'))
                ->where('status','1')
    			->get();
    	$arr_img = array();
    	foreach ($images as $image) {
    		array_push($arr_img,$image->image);
    	}
    	
    	return view('frontend.discover',['items' => $items,'images' => $arr_img,'i'=>0]);
    }
    public function getItemsFromPost(Request $re)
    {
        $cities = DB::table('city')->whereIn('city',['hcmcity','Hanoi','Danang'])->get();
        $districts = DB::table('districts')->get();
        $wards = DB::table('wards')->get();
        $city = $re->city == NULL ? "Đà nẵng" : $re->city;
        $dis = $re->dis == NULL ? "" : $re->dis;
        $ward = $re->ward == NULL ? "" : $re->ward;
        $id = $re->id;
        if (  $id == 7  ) {
            $results = DB::table('items')
                        ->join('categories','items.categoryID','=','categories.id')
                        ->join('users','items.userID','=','users.id')
                        ->where('status','1')
                        ->where('address','like','%'.$ward.'%'.$dis.'%'.$city.'%')
                        ->select('items.*','categories.catename','users.rawname','users.phone')
                        ->get();
        }else{
                    $results = DB::table('items')
                        ->join('categories','items.categoryID','=','categories.id')
                        ->join('users','items.userID','=','users.id')
                        ->where('status','1')
                        ->where('categoryID','=',$id)
                        ->where('address','like','%'.$ward.'%'.$dis.'%'.$city.'%')
                        ->select('items.*','categories.catename','users.rawname','users.phone')
                        ->get();
        }

            $re->flash();
            return view('frontend.view',['results' => $results, 'districts' => $districts,'wards' => $wards ,'cities' => $cities,'id' => $id]);

    }

    public function getStateList(Request $request)
        {
            $states = DB::table("districts")
            ->where("id_city",$request->country_id)
            ->get();
            return response()->json($states);
        }

        public function getCityList(Request $request)
        {
            $cities = DB::table("wards")
            ->where("id_district",$request->state_id)
            ->get();
            return response()->json($cities);
        }
   
}
