@extends('shared.adminlayout')
@section('pagetitle')
	@if ($type == 1)
		@section('all','mm-active')
		Toàn bộ bài đăng
	@endif
	@if ($type == 2)
		@section('ok','mm-active')
		Bài đăng đã duyệt
	@endif
	@if ($type == 3)
		@section('unok','mm-active')
		Bài đăng chưa duyệt
	@endif
@endsection
@section('styles')
	#map{
		width: 100%;
		height: 500px;
	}
	.infoimage{
		width: 100px;
		height: 100px;
	}
	.map1 tr td:first-child{
		width: 150px;
		padding: 5px 0;
	}
	.center {
		text-align: center;
	}
	.time-created {
		font-size: 10px !important;
		float: right;
	}
	.btn-fake {
		display: inline-block;
		border-radius: 5px;
		background: #3f6ad8;
		color: white;
		text-decoration: none;
		padding: 5px 3px;
		text-align: center;
	}
	.btn-fake:hover {
		color: black;
		text-decoration: none;
	}
@endsection
@section('pageicon')
pe-7s-menu
@endsection
@section('content')
<div class="col-md-12 col-lg-12">
                                <div class="mb-3 card">

<div id="map"></div>
</div>
</div>
<script src="https://maps.googleapis.com/maps/api/js?key={{ env('GOOGLE_MAPS_API_KEY') }}&libraries=places&callback=reload" async defer></script>
@endsection
@section('scripts')
<script type="text/javascript">
	var info = [
		@foreach ($items as $item)
			
			["{{ $item->lat }}","{{ $item->lng }}","{{ $item->name }}","{{ $item->image }}","{{ $item->rawname }}","{{ $item->phone }}","{{ $item->description }}","{{ $item->created_at }}","{{ $item->status }}","{{ $item->id }}"],
		@endforeach 
	];
	var type = "{{$type}}" ;
	console.log(type);
	var infowindow;
	var red_icon =  'http://maps.google.com/mapfiles/ms/icons/red-dot.png' ;
    var purple_icon =  'http://maps.google.com/mapfiles/ms/icons/purple-dot.png' ;
	var markers = {};
	var getLatLng = function(lat, lng) {
            return new google.maps.LatLng(lat, lng);
        };
	var map;
	console.log(info);
    function reload() {
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
        	var status =  info[i][8];
        	var id = info[i][9];
        	if (status == 0) {
        		var marker = new google.maps.Marker({
                position: getLatLng(lat, lng),
                map: map,
                icon : purple_icon,
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
                "				<tr><td colspan='2' class='center'>\n"+
                "				<a class='btn-fake' href='/admin/accept/"+id+"/"+type+"'>Duyệt</a></td></tr>" +
                "            <tr>\n" +
                "                <td colspan='2'><span class='time-created'>"+time+"</span></td>"+
                "            </tr>\n" +
                
                "        </table>\n" +
                "    </div>"
            });
        	}
        	else {
        		var marker = new google.maps.Marker({
                position: getLatLng(lat, lng),
                map: map,
                icon : red_icon,
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
        	}
        	
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