@extends('shared.layout')
@section('style')
.single-features-area {
	margin-top: 3px;
}
.single-features-area:hover {
	cursor: pointer;
}
.map1 tr > td:first-child {
	width: 100px;
	padding: 5px 0;
}
.feature-title > p:last-child {
    font-size: 0.5em !important;
    margin-top: 5px;
    display: inline-block;
    bottom: 5px;
    right: 15px;
    position: absolute;
}
@endsection
@section('content')
<div class="breadcumb-area bg-img bg-overlay" style="background-image: url({{ asset('frontend/img/bg-img/hero-1.jpg') }});"></div>
</div>

<section class="dorne-explore-area d-md-flex">
	<!-- Explore Search Area -->
	<div class="explore-search-area d-md-flex">
		<!-- Explore Search Form -->
		<div class="explore-search-form">
			<h6>Bạn đang tìm kiếm gì?</h6>
			<!-- Tabs Content -->
			<div class="tab-content" id="nav-tabContent">
				<div class="tab-pane fade show active" id="nav-places" role="tabpanel" aria-labelledby="nav-places-tab">
					<!-- =========================================== -->
					<!-- =========================================== -->
					<form action="{{route('viewpostfrompost')}}" method="POST">
						{{ csrf_field() }}
						<select class="custom-select" name="city" id="destinations">
							<option value="">Thành phố {{ old('city') }}</option>
							@foreach ($cities as $city)
								<option value="{{ $city->admin }}">{{ $city->admin }}</option>
							@endforeach
						</select>
						<select class="custom-select" name="dis" id="destinations">
							<option value="">Quận {{ old('dis')}}</option>
							@foreach ($districts as $district)
								<option value="{{ $district->name }}">{{ $district->name }}</option>
							@endforeach
						</select>
						<select class="custom-select" name="ward" id="destinations">
							<option value="">Phường {{ old('ward')}}</option>
							@foreach ($wards as $ward)
								<option value="{{ $ward->name }}">{{ $ward->name }}</option>
							@endforeach
						</select>
						<div class="row mt-md-5 mt-0">
							<div class="col-12 col-xl-6">
								<label class="custom-control custom-checkbox mb-3">
									<input type="radio" name="id" class="custom-control-input" value="1" 
									@if(isset($id) && $id == 1)
									checked 
									@endif >
									<span class="custom-control-indicator"></span>
									<span class="custom-control-description">Ví tiền</span>
								</label>
							</div>
							<div class="col-12 col-xl-6">
								<label class="custom-control custom-checkbox mb-3">
									<input type="radio" name="id" class="custom-control-input" value="2" 
									@if(isset($id) && $id == 2)
									checked 
									@endif>
									<span class="custom-control-indicator"></span>
									<span class="custom-control-description">Laptop</span>
								</label>
							</div>
							<div class="col-12 col-xl-6">
								<label class="custom-control custom-checkbox mb-3">
									<input type="radio" name="id" class="custom-control-input" value="3" 
									@if(isset($id) && $id == 3)
									checked 
									@endif>
									<span class="custom-control-indicator"></span>
									<span class="custom-control-description">Thú cưng</span>
								</label>
							</div>
							<div class="col-12 col-xl-6">
								<label class="custom-control custom-checkbox mb-3">
									<input type="radio" name="id" class="custom-control-input" value="4" 
									@if(isset($id) && $id == 4)
									checked 
									@endif>
									<span class="custom-control-indicator"></span>
									<span class="custom-control-description">Điện thoại</span>
								</label>
							</div>
							<div class="col-12 col-xl-6">
								<label class="custom-control custom-checkbox mb-3">
									<input type="radio" name="id" class="custom-control-input" value="5" 
									@if(isset($id) && $id == 5)
									checked 
									@endif>
									<span class="custom-control-indicator"></span>
									<span class="custom-control-description">Thẻ ATM</span>
								</label>
							</div>
							<div class="col-12 col-xl-6">
								<label class="custom-control custom-checkbox mb-3">
									<input type="radio" name="id" class="custom-control-input" value="6" 
									@if(isset($id) && $id == 5)
									checked 
									@endif>
									<span class="custom-control-indicator"></span>
									<span class="custom-control-description">Giấy tờ tùy thân</span>
								</label>
							</div>
							<div class="col-12 col-xl-6">
								<label class="custom-control custom-checkbox mb-3">
									<input type="radio" name="id" class="custom-control-input" value="7" 
									@if(isset($id) && $id == 7)
									checked 
									@endif>
									<span class="custom-control-indicator"></span>
									<span class="custom-control-description">Tất cả</span>
								</label>
							</div>
						</div>
						<button type="submit" name="submit" class="btn dorne-btn mt-50 bg-white text-dark"><i class="fa fa-search pr-2" aria-hidden="true"></i> Tìm kiếm</button>
					</form>
				</div>
			</div>
		</div>

		<!-- Explore Search Result -->
		<div class="explore-search-result">
			@if($results == null)
			<p>Không có đồ vật nào phù hợp</p>
			@endif
			<!-- Single Features Area -->
			@foreach($results as $result)
			<div class="single-features-area" onclick="changeItem({{ $result->lat }},{{ $result->lng}},'{{ $result->description}}','{{ $result->rawname}}',{{ $result->phone}} )">
				<img src="{{url('/storage/itemimage/'.$result->image)}}" alt="{{$result->image}}">
				<p hidden="true" id="lat">{{ $result->lat }}</p>
				<p hidden="true" id="lng">{{ $result->lng }}</p>
				<p hidden="true" id="des">{{ $result->description }}</p>
				<p hidden="true" id="user">{{ $result->rawname }}</p>
				<p hidden="true" id="phone">{{ $result->phone }}</p>
				<div class="price-start">
					<p>{{ $result->name }}</p>
				</div>
				<div class="feature-content d-flex align-items-center justify-content-between">
					<div class="feature-title">
						<h5>{{ $result->catename }}</h5>
						<p>{{ $result->address }}</p>
						<p>{{ $result->created_at }}</p>
					</div>
				</div>
			</div>
			@endforeach

		</div>
	</div>
	<!-- Explore Map Area -->
	<div class="explore-map-area">
		<div id="exploreGoogleMap"></div>
	</div>
</section>
<script src="https://maps.googleapis.com/maps/api/js?key={{ env('GOOGLE_MAPS_API_KEY') }}&libraries=places&callback=initMap" async defer></script>
@endsection
@section('scripts')
<script>
	var map;
	var latitute = Number(document.getElementById('lat').innerHTML);
	var longtitute = Number(document.getElementById('lng').innerHTML);
	var des = document.getElementById('des').innerHTML;
	var user = document.getElementById('user').innerHTML;
	var phone = document.getElementById('phone').innerHTML;
	function initMap() {
		var myLatLng = {lat: latitute, lng: longtitute};

		var map = new google.maps.Map(document.getElementById('exploreGoogleMap'), {
			zoom: 17,
			center: myLatLng
		});

		var marker = new google.maps.Marker({
			position: myLatLng,
			map: map,
			animation: google.maps.Animation.DROP,
			html:"    <div>\n" +
				"		<h2>Thông tin chi tiết</h2>"+
                "        <table class=\"map1\">\n" +
                "			<tr>"+
                "			<td>Người nhặt: "+"</td>"+
                "			<td>"+user+"</td></tr>"+
                "			<tr><td>Số điện thoại: "+"</td>"+
                "			<td>"+phone+"</td></tr>"+
                "			</tr>"+
                "            <tr>\n" +
                "                <td>Mô tả:</td>\n" +
                "                <td> "+des+" </td></tr>\n" +
                "        </table>\n" +
                "    </div>"
		});
		bindMarkerinfo(marker);
	}
	var bindMarkerinfo = function(marker) {
            google.maps.event.addListener(marker, "click", function (point) {
                infowindow = new google.maps.InfoWindow();
                infowindow.setContent(marker.html);
                infowindow.open(map, marker);
                
            });
        };
	function changeItem(lat,lng,desc,name,tell){
		latitute = lat;
		longtitute = lng;
		user = name;
		des = desc;
		phone = tell;
		return initMap();
	}
	function changeItem2(lat,lng,desc,name,tell){
		console.log(lat,lng,desc,name,tell);
	}
	
</script>
@endsection