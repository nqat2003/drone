@extends('shared.layout')
@section('style')
select{
display: block;
width: 100%;
padding: .375rem .75rem;
font-size: 1rem;
line-height: 1.5;
color: #495057;
background-color: #fff;
background-image: none;
background-clip: padding-box;
border: 1px solid #ced4da;
border-radius: .25rem;
transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
}
@endsection
@section('content')
<div class="breadcumb-area bg-img bg-overlay" style="background-image: url({{ asset('frontend/img/bg-img/hero-1.jpg') }});"></div>
<section class="dorne-listing-destinations-area section-padding-100-50">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="section-heading dark text-center">
					<span></span>
					<h4>Đăng món đồ bạn nhặt được</h4>
					<p>Hành động nhỏ - Ý nghĩa lớn</p>
				</div>
			@if (Session::has('success'))

			<div class="alert alert-success alert-block">

				<button type="button" class="close" data-dismiss="alert">×</button>

				<strong>{{ Session::get('success') }}</strong>

			</div>

			@endif
			</div>
		</div>
		<div>
			
			<form action="{{ route('add') }}" id="form" method="POST" role="form" enctype="multipart/form-data">
				{{ csrf_field()}}
				<div class="form-group">
					<label for="user-name">Tên của bạn</label>
					<input type="text" name="user_name" class="form-control" placeholder="John Witch" required autocomplete="off">
				</div>
				<div class="form-group">
					<label for="item-category">Loại đồ</label>
					<select name="category" style="width: 100%;"> 
						@foreach ($categories as $category)
							<option value="{{ $category->id }}">{{ $category->catename }}</option>
						@endforeach
					</select>
				</div>
				<div class="form-group">
					<label for="item-name">Món đồ bạn nhặt được</label>
					<input type="text" id="" name="item_name" class="form-control" placeholder="Ví màu xanh..." required autocomplete="off">
				</div>
				<div class="form-group">
					<label for="item-category">Hình ảnh</label>
					<input type='file' id="imgInp" name="image" />
					<small id="fileHelp" class="form-text text-muted">Please upload a valid image file. Size of image should not be more than 2MB.</small>
				</div>
				<img id="blah" accept="image/*" alt="No Image" width="200px" height="150px;" />
				<p></p>
			</div>
			<div class="form-group">
				<label for="address_address">Vị trí nhặt được</label>
				<input type="text" id="address-input" name="address_address" class="form-control map-input" required>
				<div id="address-map-container" style="width:100%;height:200px; margin-top: 10px; ">
					<div style="width: 100%; height: 100%" id="address-map"></div>
				</div>
			</div>
			<div class="form-group">
				<label for="user-phone">Số điện thoại liên lạc</label>
				<input type="number" id="" name="user_phone" class="form-control" placeholder="0981xxxxxx" required autocomplete="off">
			</div>
			<div class="form-group">
				<label for="user-phone">Mô tả thêm: </label>
				<input type="text" id="" name="item_description" class="form-control" placeholder="Trong ví có..." autocomplete="off">
			</div>
			<input type="hidden" name="address_latitude" id="address-latitude" value="0" />
			<input type="hidden" name="address_longitude" id="address-longitude" value="0" />
			<button type="submit" class="btn btn-primary">Submit</button>

		</form>

	</div>
</div>
</section>




<script src="https://maps.googleapis.com/maps/api/js?key={{ env('GOOGLE_MAPS_API_KEY') }}&libraries=places&callback=initialize" async defer></script>


@endsection
@section('scripts')
<script type="text/javascript">
	function initialize() {

		$('form').on('keyup keypress', function(e) {
			var keyCode = e.keyCode || e.which;
			if (keyCode === 13) {
				e.preventDefault();
				return false;
			}
		});
		const locationInputs = document.getElementsByClassName("map-input");

		const autocompletes = [];
		const geocoder = new google.maps.Geocoder;
		for (let i = 0; i < locationInputs.length; i++) {

			const input = locationInputs[i];
			const fieldKey = input.id.replace("-input", "");
			const isEdit = document.getElementById(fieldKey + "-latitude").value != '' && document.getElementById(fieldKey + "-longitude").value != '';

			const latitude = parseFloat(document.getElementById(fieldKey + "-latitude").value) || 16.075239;
			const longitude = parseFloat(document.getElementById(fieldKey + "-longitude").value) || 108.224136;

			const map = new google.maps.Map(document.getElementById(fieldKey + '-map'), {
				center: {lat: latitude, lng: longitude},
				zoom: 15
			});
			const marker = new google.maps.Marker({
				map: map,
			});

			marker.setVisible(isEdit);

			const autocomplete = new google.maps.places.Autocomplete(input);
			autocomplete.key = fieldKey;
			autocompletes.push({input: input, map: map, marker: marker, autocomplete: autocomplete});
		}

		for (let i = 0; i < autocompletes.length; i++) {
			const input = autocompletes[i].input;
			const autocomplete = autocompletes[i].autocomplete;
			const map = autocompletes[i].map;
			const marker = autocompletes[i].marker;

			google.maps.event.addListener(autocomplete, 'place_changed', function () {
				marker.setVisible(false);
				const place = autocomplete.getPlace();

				geocoder.geocode({'placeId': place.place_id}, function (results, status) {
					if (status === google.maps.GeocoderStatus.OK) {
						const lat = results[0].geometry.location.lat();
						const lng = results[0].geometry.location.lng();
						setLocationCoordinates(autocomplete.key, lat, lng);
					}
				});

				if (!place.geometry) {
					window.alert("Không có thông tin cho vị trí: '" + place.name + "', vui lòng thử lại.");
					input.value = "";
					return;
				}

				if (place.geometry.viewport) {
					map.fitBounds(place.geometry.viewport);
				} else {
					map.setCenter(place.geometry.location);
					map.setZoom(5);
				}
				marker.setPosition(place.geometry.location);
				marker.setVisible(true);

			});
		}
	}

	function setLocationCoordinates(key, lat, lng) {
		const latitudeField = document.getElementById(key + "-" + "latitude");
		const longitudeField = document.getElementById(key + "-" + "longitude");
		latitudeField.value = lat;
		longitudeField.value = lng;
	}
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('#blah').attr('src', e.target.result);
			}

			reader.readAsDataURL(input.files[0]);
		}
	}
	$("#imgInp").change(function() {
		readURL(this);
	});
</script>
@endsection
