@extends('shared.layout')
@section('style')
#map{
	border: 20px solid #f1f1f2;
	border-radius: 15px;
	box-shadow: 5px 6px 6px black;
	width: 100%;
	height: 500px;
	margin-bottom: 20px;
}
.infoimage{
	width: 100px;
	height: 100px;
}
.map1 tr td:first-child{
	width: 150px;
	padding: 5px 0;
}
.time-created {
	font-size: 10px !important;
	float: right;
}
@endsection
@section('content')
<div class="breadcumb-area bg-img bg-overlay" style="background-image: url({{ asset('frontend/img/bg-img/hero-1.jpg') }});"></div>
<section class="dorne-listing-destinations-area section-padding-100-50">
</section>
<div class="container">
	<div class="row">
			<div class="col-12">
				<div class="section-heading dark text-center">
					<span></span>
					<h4>Tìm đồ thất lạc khắp mọi nơi !</h4>
					<p></p>
				</div>
			</div>
		</div>
	<div id="map"></div>
</div>
<script src="https://maps.googleapis.com/maps/api/js?key={{ env('GOOGLE_MAPS_API_KEY') }}&libraries=places&callback=initMap" async defer></script>
@endsection
@section('scripts')
<script type="text/javascript">
	var info = [
		@foreach ($items as $item)
			
			["{{ $item->lat }}","{{ $item->lng }}","{{ $item->name }}","{{ $item->image }}","{{ $item->rawname }}","{{ $item->phone }}","{{ $item->description }}","{{ $item->created_at }}"],
		@endforeach 
	];
	var infowindow;
	var markers = {};
	var getLatLng = function(lat, lng) {
            return new google.maps.LatLng(lat, lng);
        };
	var map;
     function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: 16.047079, lng: 108.206230},
          zoom: 12
        });
        for (var i = 0; i < info.length; i++) {
        	var lat = info[i][0];
        	var lng = info[i][1];
        	var name = info[i][2];
        	var picture = info[i][3];
        	var rawname = info[i][4];
        	var phone = info[i][5];
        	var des = info[i][6];
        	var time = info[i][7];
        	@php
            	$i = $i + 1;
            @endphp
        	var marker = new google.maps.Marker({
                position: getLatLng(lat, lng),
                map: map,
                animation: google.maps.Animation.DROP,
                html: "    <div>\n" +
                "        <table class=\"map1\">\n" +
                "            <tr>\n" +
                "                <h2>"+name+"</h2></tr><tr>\n" +
                "                <td>Hình ảnh</td><td><img class=\"infoimage\" src='http://drone.com/storage/itemimage/"+picture+"' alt=''></td>\n" +
                "            </tr>\n" +
                "            <tr>\n" +
                "                <td>Người nhặt</td>\n" +
                "                <td>"+rawname+"</td>\n" +
                "            </tr>\n" +
                "            <tr>\n" +
                "                <td>Số điện thoại liên lạc</td>\n" +
                "                <td>"+phone+"</td>\n" +
                "            </tr>\n" +
                "            <tr>\n" +
                "                <td>Mô tả </td>\n" +
                "                <td>"+des+"</td>\n" +
                "            </tr>\n" +
                "            <tr>\n" +
                "                <td colspan='2'><span class='time-created'>"+time+"</span></td>"+
                "            </tr>\n" +
                "        </table>\n" +
                "    </div>"
            });
            bindMarkerinfo(marker);
        }
        
      }
	var bindMarkerinfo = function(marker) {
            google.maps.event.addListener(marker, "click", function (point) {
                infowindow = new google.maps.InfoWindow();
                infowindow.setContent(marker.html);
                infowindow.open(map, marker);
                // removeMarker(marker, markerId); // remove it
            });
        };
	

</script>
@endsection