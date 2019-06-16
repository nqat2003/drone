@extends('shared.adminlayout')
@section('pagetitle','Thêm tài khoản Admin')
@section('pageicon','pe-7s-add-user')
@section('content')
<div class="tab-content">
	<div class="tab-pane tabs-animation fade show active" id="tab-content-0" role="tabpanel">
		<div class="row">
			<div class="col-md-12">
				@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif
				<div class="main-card mb-3 card">
					<div class="card-body">
						<h5 class="card-title">Thêm mới tài khoản</h5>
						@if ($message = Session::get('success'))

			<div class="alert alert-success alert-block">

				<button type="button" class="close" data-dismiss="alert">×</button>

				<strong>{{ $message }}</strong>

			</div>

			@endif

			@if ($message = Session::get('errorr'))

			<div class="alert alert-danger alert-block">

				<button type="button" class="close" data-dismiss="alert">×</button>

				<strong>{{ $message }}</strong>

			</div>

			@endif
						<form class="" action="{{ route('doaddadmin') }}" method="POST">
							@csrf
							<div class="position-relative form-group">
								<label for="" class="">Tên đăng nhập</label>
								<input name="username" id="exampleEmail" placeholder="Your usename..." type="text" class="form-control" autocomplete="off" required value="{{old('username')}}">
							</div>
							<div class="position-relative form-group">
								<label for="examplePassword" class="">Mật khẩu</label>
								<input name="password" id="examplePassword" placeholder="Your password..." type="password"
								class="form-control" autocomplete="off" required>
							</div>
							<div class="position-relative form-group">
								<label for="examplePassword" class="">Nhập lại mật khẩu</label>
								<input name="repassword" id="examplePassword" placeholder="Password confirm..." type="password"
								class="form-control" autocomplete="off" required>
							</div>
							<div class="position-relative form-group">
								<label for="examplePassword" class="">Email</label>
								<input name="email" id="examplePassword" placeholder="Example@exp.com" type="email"
								class="form-control" autocomplete="off" required value="{{old('email')}}">
							</div>
							<div class="position-relative form-group">
								<label for="examplePassword" class="">Tên</label>
								<input name="rawname" id="examplePassword" placeholder="Your name" type="text"
								class="form-control" autocomplete="off" required value="{{old('rawname')}}">
							</div>
							<div class="position-relative form-group">
								<label for="examplePassword" class="">Số điện thoại</label>
								<input name="phone" id="examplePassword" placeholder="Your phone number" type="number"
								class="form-control" autocomplete="off" required value="{{old('phone')}}">
							</div>
							<div class="position-relative form-group">
								<label for="exampleSelect" class="">Giới tính</label>
								<select name="gender" id="exampleSelect" class="form-control">
									<option value="1" selected>Nam</option>
									<option value="2">Nữ</option>
								</select>
							</div>
							<button class="mt-1 btn btn-primary">Submit</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	@endsection