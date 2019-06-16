@extends('shared.adminlayout')
@section('pagetitle','Danh sách người dùng')
@section('styles')
@endsection
@section('pageicon','pe-7s-users')
@section('content')
<div class="col-md-12 col-lg-12">
	<div class="col-lg-12">
		<div class="main-card mb-3 card">
			<div class="card-body"><h5 class="card-title"></h5>
				<table class="mb-0 table table-hover">
					<thead>
						<tr>
							<th>#</th>
							<th>Họ tên</th>
							<th>Số điện thoại</th>
							<th>Email (<i class="text-danger">*</i>)</th>
						</tr>
					</thead>
					<tbody>
						@foreach ($results as $result)
						<tr>
							<th scope="row">{{$result->id}}</th>
							<td>{{ $result->rawname }}</td>
							<td>{{ $result->phone }}</td>
							<td>{{ $result->email }}</td>
						</tr>
						@endforeach
					</tbody>
				</table>
				<div style="margin: 0 auto;width: 200px; margin-top: 15px;">{{ $results->links() }}</div>
				<p style="float:right;">(<i class="text-danger">*</i>) Email chỉ có khi người dùng đăng ký.</p>
			</div>

		</div>
	</div>
</div>
@endsection