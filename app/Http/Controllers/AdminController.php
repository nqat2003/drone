<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class AdminController extends Controller
{
	public function home()
	{
		if (session('admin') == null) {
			return redirect()->route('login');
		}
		return view('admin.index');
	}
	public function login()
	{
		return view('admin.login');
	}
	public function doLogin(Request $re)
	{
		$password = md5(trim($re->pass));
		$count = DB::table('users')
				->where('username',$re->username)
				->where('password',$password)
				->count();
		if ($count == 1) {
			session(['admin' => true]);
			return view('admin.index');
		}
		return view('admin.login');
	}
	public function show($type = 1)
	{
		if (session('admin') == null) {
			return redirect()->route('login');
		}
		switch ($type) {
			case '1':
			$results = DB::table('items')
			->join('categories','items.categoryID','=','categories.id')
			->join('users','items.userID','=','users.id')
			->select('items.*','categories.catename','users.rawname','users.phone')
			->get();
			break;
			case '2':
			$results = DB::table('items')
			->join('categories','items.categoryID','=','categories.id')
			->join('users','items.userID','=','users.id')
			->where('status','1')
			->select('items.*','categories.catename','users.rawname','users.phone')
			->get();
			break;
			case '3':
			$results = DB::table('items')
			->join('categories','items.categoryID','=','categories.id')
			->join('users','items.userID','=','users.id')
			->where('status','0')
			->select('items.*','categories.catename','users.rawname','users.phone')
			->get();
			break;
			default:
    			# code...
			break;
		}
		return view('admin.show',['items' => $results,'type' => $type]);
	}
	public function acceptItem($id,$type)
	{
		if (session('admin') == null) {
			return redirect()->route('login');
		}
		$do = DB::table('items')
		->where('id',$id)
		->update(['status' => 1]);
		switch ($type) {
			case '1':
			$results = DB::table('items')
			->join('categories','items.categoryID','=','categories.id')
			->join('users','items.userID','=','users.id')
			->select('items.*','categories.catename','users.rawname','users.phone')
			->get();
			break;
			case '2':
			$results = DB::table('items')
			->join('categories','items.categoryID','=','categories.id')
			->join('users','items.userID','=','users.id')
			->where('status','1')
			->get();
			break;
			case '3':
			$results = DB::table('items')
			->join('categories','items.categoryID','=','categories.id')
			->join('users','items.userID','=','users.id')
			->where('status','0')
			->get();
			break;
			default:
    			# code...
			break;
		}
		return view('admin.show',['items' => $results, 'type'  => $type,'success' => "Duyệt bài thành công !!"]);
	}
	public function addAdminUser() {
		if (session('admin') == null) {
			return redirect()->route('login');
		}
		return view('admin.add_user');
	}
	public function doAddAdminUser(Request $re)
	{
		if (session('admin') == null) {
			return redirect()->route('login');
		}
		$validator = $re->validate([
			'username' => 'bail|required|unique:users|max:255',
			'email' => 'required|unique:users|email',
			'password' => 'required_with:repassword|same:repassword',
		],
		[	
			'username.unique' => 'Tên đăng nhập này đã có người sử dụng',
			'email.unique' => 'Email này đã có người sử dụng',
			'password.same' => 'Nhập lại mật khẩu không đúng' 
		]);
		$id = DB::table('users')->insert([
			['username' => $re->username, 
			'password' => md5($re->password), 
			'email' => $re->email,
			'rawname' => $re->rawname,
			'phone' => $re->phone,
			'gender' => $re->gender,
			'role' => 0 ]
		]);
			return back()->with('success','Tạo tài khoản thành công !');
	}
	public function listUsers()
	{
		$results = DB::table('users')->paginate(10);
		return view('admin.list',['results' => $results]);
	}
	public function logout()
	{
		session(['admin' => null]);
		return view('admin.login');
	}
}
