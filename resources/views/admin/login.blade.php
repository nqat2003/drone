<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Login</title>
	<style type="text/css">
		body{
			background-image: url("{{ asset('frontend/img/bg-img/hero-1.jpg') }}");
			font-family: 'Roboto Slab', serif;
		}
		#wrapper {
			width: 500px;
			border: 2px solid white;
			margin: 0 auto;
			box-shadow: 3px 4px 4px black;
			padding: 20px 10px;
			border-radius: 5px;
			margin-top: 15%;
		}

		#logo{
			width: 165px;
			margin:0 auto;
		}

		label {
			display: inline-block;
			width: 150px;
			margin: 20px 0;
			color: white;
			font-weight: bold;
			font-family: 'Noto Serif', serif;
		}
		form {
			width: 80%;
			margin: 0 auto;
		}
		button {
			border-radius: 5px;
			padding: 3px;
			margin: 0 auto;
			display: block;
		}
		input {
			width: 180px;
			height: 25px;
			padding: 2px;
			border-radius: 5px;
		}
		span {
			margin-top: 5px;
			display: inline-block;
			float: right;
			font-size: 10px;
			color: grey;
		}
	</style>
</head>
<body>
	
	<div id="wrapper">
		<div id="logo">
			<img src="{{ asset('frontend/img/core-img/logo1.png') }}">
		</div>

		<form method="POST" action="{{ route('dologin') }}">
			@csrf
			
			<div class="form-group">
				<label for="username">Tên đăng nhập </label>
				<input type="text" name="username" required autocomplete="off"> 
			</div>
			<div class="form-group">
				<label for="password">Mật khẩu </label>
				<input type="password" name="pass" required autocomplete="off">
			</div>
			<button>Đăng nhập</button>
			
		</form>
		<span>Không có tài khoản ? Vui lòng liên lạc với quản trị viên.</span>
	</div>
</body>
</html>