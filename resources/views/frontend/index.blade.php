@extends('shared.layout')
@section('style')
.feature-title > p:last-child {
    font-size: 0.5em !important;
    margin-top: 5px;
    display: inline-block;
    bottom: 5px;
    right: 15px;
    position: absolute;
}
.single-features-area > img {
    height: 170px;
}
.feature-content {
    min-height: 160px;
}
.va3 {
    opacity: 0;
}
button:hover{
    cursor: pointer;
}
@endsection
@section('content')
<section class="dorne-welcome-area bg-img bg-overlay" style="background-image: url({{ asset('frontend/img/bg-img/hero-1.jpg') }});">
        <div class="container h-100">
            <div class="row h-100 align-items-center justify-content-center">
                <div class="col-12 col-md-10">
                    <div class="hero-content">
                        <h2>Hãy để chúng tôi giúp bạn.</h2>
                        <h4>Lựa chọn tốt nhất khi bạn bị mất đồ</h4>
                    </div>
                    <!-- Hero Search Form -->
                    <div class="hero-search-form">
                        <!-- Tabs -->
                        <div class="nav nav-tabs" id="heroTab" role="tablist">
                            <a class="nav-item nav-link active" id="nav-places-tab" data-toggle="tab" href="#nav-places" role="tab" aria-controls="nav-places" aria-selected="true">Bắt đầu</a>
                            <!-- <a class="nav-item nav-link" id="nav-events-tab" data-toggle="tab" href="#nav-events" role="tab" aria-controls="nav-events" aria-selected="false">Events</a> -->
                        </div>
                        <!-- Tabs Content -->
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="nav-places" role="tabpanel" aria-labelledby="nav-places-tab">
                                <h6>Nói cho chúng tôi biết bạn đang tìm gì?</h6>
                                <form action="{{route('viewpost')}}" method="POST" class="searchform">
                                    {{ csrf_field() }}
                                    <select class="custom-select" name="city">
                                        <option selected>Vị trí mất đồ</option>
                                        @foreach ($cities as $city)
                                            <option value="{{ $city->admin }}">{{ $city->admin }}</option>
                                        @endforeach
                                    </select>
                                    <select class="custom-select" name="id">
                                        <option selected>Vật bị mất</option>
                                        <option value="0">Tất cả</option>
                                        @foreach ($categories as $category)
                                            <option value="{{ $category->id }}">{{ $category->catename }}</option>
                                        @endforeach
                                    </select>
                                    <select class="custom-select va3" disabled>
                                        <option selected>Tùy chọn</option>
                                        
                                    </select>
                                    <button type="submit" name="submit" class="btn dorne-btn"><i class="fa fa-search pr-2" aria-hidden="true"></i> Tìm kiếm</button>
                                </form>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Hero Social Btn -->
        <div class="hero-social-btn">
            <div class="social-title d-flex align-items-center">
                <h6>Mạng xã hội của chúng tôi</h6>
                <span></span>
            </div>
            <div class="social-btns">
                <a href="#"><i class="fa fa-linkedin" aria-haspopup="true"></i></a>
                <a href="#"><i class="fa fa-behance" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-twitter" aria-haspopup="true"></i></a>
                <a href="#"><i class="fa fa-facebook" aria-haspopup="true"></i></a>
            </div>
        </div>
    </section>
    <!-- ***** Welcome Area End ***** -->

    <!-- ***** Catagory Area Start ***** -->
    <section class="dorne-catagory-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="all-catagories">
                        <div class="row">
                            <!-- Single Catagory Area -->
                            <div class="col-12 col-sm-6 col-md">
                                <div class="single-catagory-area wow fadeInUpBig" data-wow-delay="0.2s">
                                    <div class="catagory-content">
                                        <img src="{{ asset('frontend/img/core-img/wallet.png')}} " alt="">
                                        <a href="/view/1">
                                            <h6>Ví</h6>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Catagory Area -->
                            <div class="col-12 col-sm-6 col-md">
                                <div class="single-catagory-area wow fadeInUpBig" data-wow-delay="0.4s">
                                    <div class="catagory-content">
                                        <img src="{{ asset('frontend/img/core-img/laptop.png')}}" alt="">
                                        <a href="/view/2">
                                            <h6>Laptop</h6>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-sm-6 col-md">
                                <div class="single-catagory-area wow fadeInUpBig" data-wow-delay="0.4s">
                                    <div class="catagory-content">
                                        <img src="{{ asset('frontend/img/core-img/pet.png')}}" alt="">
                                        <a href="/view/3">
                                            <h6>Thú cưng</h6>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Catagory Area -->
                            <div class="col-12 col-sm-6 col-md">
                                <div class="single-catagory-area wow fadeInUpBig" data-wow-delay="0.6s">
                                    <div class="catagory-content">
                                        <img src="{{ asset('frontend/img/core-img/phone.png')}}" alt="">
                                        <a href="/view/4">
                                            <h6>Điện thoại</h6>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Catagory Area -->
                            <div class="col-12 col-sm-6 col-md">
                                <div class="single-catagory-area wow fadeInUpBig" data-wow-delay="0.8s">
                                    <div class="catagory-content">
                                        <img src="{{ asset('frontend/img/core-img/atm.png')}}" alt="">
                                        <a href="/view/5">
                                            <h6>ATM &amp; Giấy tờ</h6>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Catagory Area -->
                            <div class="col-12 col-md">
                                <div class="single-catagory-area wow fadeInUpBig" data-wow-delay="1s">
                                    <div class="catagory-content">
                                        <img src="{{ asset('frontend/img/core-img/more.png')}}" alt="">
                                        <a href="/view">
                                            <h6>Khác</h6>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Catagory Area End ***** -->

    <!-- ***** About Area Start ***** -->
    <section class="dorne-about-area section-padding-0-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="about-content text-center">
                        <h2>Tìm lại đồ vật đã mất của bạn với <br><span>Drone</span></h2>
                        <p>Bạn nhặt được đồ ? Bạn bị mất đồ ? Hãy đến với Drone, trang web tìm đồ thất lạc tốt nhất hiện nay. Với Drone, việc tìm đồ trở nên dễ dàng hơn bao giờ hết, việc bạn cần làm, là đến với Drone.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** About Area End ***** -->

    <!-- ***** Editor Pick Area Start ***** -->
    <section class="dorne-editors-pick-area bg-img bg-overlay-9 section-padding-100" style="background-image: url({{asset('frontend/img/bg-img/hero-2.jpg')}});">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading text-center">
                        <span></span>
                        <h4>Chọn thành phố của bạn</h4>
                        <p>Thành phố hàng đầu</p>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12 col-lg-6">
                    <div class="single-editors-pick-area wow fadeInUp" data-wow-delay="0.2s">
                        <img src="{{ asset('frontend/img/bg-img/editor-1.jpg') }}" alt="">
                        <div class="editors-pick-info">
                            <div class="places-total-destinations d-flex">
                                <a href="{{route('getcity',['city' => 'Đà Nẵng'])}}">Đà Nẵng</a>
                                <a href>{{ $dn }} món đồ</a>
                            </div>
                            <div class="add-more">
                                <a href>+</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-lg-6">
                    <div class="single-editors-pick-area wow fadeInUp" data-wow-delay="0.4s">
                        <img src="{{ asset('frontend/img/bg-img/hanoi.jpg')}}" alt="">
                        <div class="editors-pick-info">
                            <div class="places-total-destinations d-flex">
                                <a href="{{route('getcity',['city' => 'Hà Nội'])}}">Hà Nội</a>
                                <a href>{{ $hn }} món đồ</a>
                            </div>
                            <div class="add-more">
                                <a href>+</a>
                            </div>
                        </div>
                    </div>
                    <div class="single-editors-pick-area wow fadeInUp" data-wow-delay="0.6s">
                        <img src="{{ asset('frontend/img/bg-img/hcm.jpg')}}" alt="">
                        <div class="editors-pick-info">
                            <div class="places-total-destinations d-flex">
                                <a href="{{route('getcity',['city' => 'Hồ Chí Minh'])}}">TP Hồ Chí Minh</a>
                                <a href>{{ $sg }} món đồ</a>
                            </div>
                            <div class="add-more">
                                <a href>+</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Editor Pick Area End ***** -->

    <!-- ***** Features Destinations Area Start ***** -->
    <section class="dorne-features-destinations-area">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading dark text-center">
                        <span></span>
                        <h4>Đồ đăng gần đây</h4>
                        <p></p>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <div class="features-slides owl-carousel">
                        <!-- Single Features Area -->
                        @foreach ($itemnews as $item)
                        <div class="single-features-area">
                            <img src="{{ url('/storage/itemimage/'.$item->image) }} " alt="">
                            <!-- Price -->
                            <div class="price-start">
                                <p>{{ $item->name }}</p>
                            </div>
                            <div class="feature-content d-flex align-items-center justify-content-between">
                                <div class="feature-title">
                                    <p style="color: black;"><b>{{ $item->address }}</b></p>
                                    <p>{{ $item->created_at }}</p>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Features Destinations Area End ***** -->

    <!-- ***** Features Events Area Start ***** -->
    <section class="dorne-features-events-area bg-img bg-overlay-9 section-padding-100-50" style="background-image: url({{ asset('frontend/img/bg-img/hero-3.jpg') }})">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading text-center">
                        <span></span>
                        <h4>Chúng tôi là</h4>
                        <p>Our team</p>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12 col-lg-6">
                    <div class="single-feature-events-area d-sm-flex align-items-center wow fadeInUpBig" data-wow-delay="0.2s">
                        <div class="feature-events-thumb">
                            <img src="{{ asset('frontend/img/bg-img/event-1.jpg') }}" alt="">
                            <div class="date-map-area d-flex">
                                <a href="#">14 Jun</a>
                                <a href="#"><img src="{{ asset('frontend/img/core-img/map.png') }}" alt=""></a>
                            </div>
                        </div>
                        <div class="feature-events-content">
                            <h5>Anh Tài</h5>
                            <h6>Designer</h6>
                            <p>Make and smooth this website graphic, as you can see, It's awesome !!!</p>
                        </div>
                        <div class="feature-events-details-btn">
                            <a href="#">+</a>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-lg-6">
                    <div class="single-feature-events-area d-sm-flex align-items-center wow fadeInUpBig" data-wow-delay="0.3s">
                        <div class="feature-events-thumb">
                            <img src="{{ asset('frontend/img/bg-img/event-2.jpg') }}" alt="">
                            <div class="date-map-area d-flex">
                                <a href="#">14 Jun</a>
                                <a href="#"><img src="{{ asset('frontend/img/core-img/map.png') }}" alt=""></a>
                            </div>
                        </div>
                        <div class="feature-events-content">
                            <h5>Tài Anh</h5>
                            <h6>Coder</h6>
                            <p>Make every feature in this website, connect screen with each other. As you can see, It's still awesome !!!</p>
                        </div>
                        <div class="feature-events-details-btn">
                            <a href="#">+</a>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-lg-6">
                    <div class="single-feature-events-area d-sm-flex align-items-center wow fadeInUpBig" data-wow-delay="0.4s">
                        <div class="feature-events-thumb">
                            <img src="{{ asset('frontend/img/bg-img/event-3.jpg') }}" alt="">
                            <div class="date-map-area d-flex">
                                <a href="#">14 Jun</a>
                                <a href="#"><img src="{{ asset('frontend/img/core-img/map.png') }}" alt=""></a>
                            </div>
                        </div>
                        <div class="feature-events-content">
                            <h5>NQ. A Tài</h5>
                            <h6>Admin</h6>
                            <p>Who lead this website, he can see your post first, and he will decide what post can appear on this website. Also awesome !!!</p>
                        </div>
                        <div class="feature-events-details-btn">
                            <a href="#">+</a>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-lg-6">
                    <div class="single-feature-events-area d-sm-flex align-items-center wow fadeInUpBig" data-wow-delay="0.5s">
                        <div class="feature-events-thumb">
                            <img src="{{ asset('frontend/img/bg-img/event-4.jpg') }}" alt="">
                            <div class="date-map-area d-flex">
                                <a href="#">14 Jun</a>
                                <a href="#"><img src="{{ asset('frontend/img/core-img/map.png') }}" alt=""></a>
                            </div>
                        </div>
                        <div class="feature-events-content">
                            <h5>Tài</h5>
                            <h6>QA</h6>
                            <p>Make sure the website not have any big bug, he find out many bug that help this website so awesome !!!</p>
                        </div>
                        <div class="feature-events-details-btn">
                            <a href="#">+</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection