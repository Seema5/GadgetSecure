<!doctype html>
<html>
<head>
    <meta name="layout" content="customLayout"/>

    <style>
    .hovereffect {
        width: 100%;
        height: 100%;
        float: left;
        overflow: hidden;
        position: relative;
        text-align: center;
        cursor: default;
    }

    .hovereffect .overlay {
        width: 100%;
        height: 100%;
        position: absolute;
        overflow: hidden;
        top: 0;
        left: 0;
        background-color: rgba(0,0,0,0.6);
        opacity: 0;
        filter: alpha(opacity=0);
        -webkit-transform: translate(460px, -100px) rotate(180deg);
        -ms-transform: translate(460px, -100px) rotate(180deg);
        transform: translate(460px, -100px) rotate(180deg);
        -webkit-transition: all 0.2s 0.4s ease-in-out;
        transition: all 0.2s 0.4s ease-in-out;
    }

    .hovereffect img {
        display: block;
        position: relative;
        -webkit-transition: all 0.2s ease-in;
        transition: all 0.2s ease-in;
    }

    .hovereffect h2 {
        text-transform: uppercase;
        color: #fff;
        text-align: center;
        position: relative;
        font-size: 17px;
        padding: 10px;
        background: rgba(0, 0, 0, 0.6);
    }

    .hovereffect a.info {

        display: inline-block;
        text-decoration: none;
        padding: 7px 14px;
        text-transform: uppercase;
        color: #fff;
        border: 1px solid #fff;
        border-radius: 10px;
        margin: 50px 0 0 0;
        background-color: transparent;
        -webkit-transform: translateY(-200px);
        -ms-transform: translateY(-200px);
        transform: translateY(-200px);
        -webkit-transition: all 0.2s ease-in-out;
        transition: all 0.2s ease-in-out;
    }

    .hovereffect a.info:hover {
        box-shadow: 0 0 5px #fff;
    }

    .hovereffect:hover .overlay {
        opacity: 1;
        filter: alpha(opacity=100);
        -webkit-transition-delay: 0s;
        transition-delay: 0s;
        -webkit-transform: translate(0px, 0px);
        -ms-transform: translate(0px, 0px);
        transform: translate(0px, 0px);
    }

    .hovereffect:hover h2 {
        -webkit-transform: translateY(0px);
        -ms-transform: translateY(0px);
        transform: translateY(0px);
        -webkit-transition-delay: 0.5s;
        transition-delay: 0.5s;
    }

    .hovereffect:hover a.info {
        -webkit-transform: translateY(0px);
        -ms-transform: translateY(0px);
        transform: translateY(0px);
        -webkit-transition-delay: 0.3s;
        transition-delay: 0.3s;
    }
        /*testimonial*/

    .testimonial-card{
        padding: 4%;
    }

        /*testimonial*/

    </style>
</head>
<body>



<!-- HOME -->
<section class="home" data-stellar-background-ratio="0.5">

    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="3" class="active"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
                <asset:image class="d-block img-fluid" src="slide1.jpg" style="width:100%;" />
                <div class="carousel-caption d-none d-md-block" style="margin-bottom: 18%;">
                    <h1 style="text-shadow: 1px 1px 6px #000000;"><g:message code="app.main.index.slide1.title" /></h1>
                    <h4 style="text-shadow: 1px 1px 6px #000000;"><g:message code="app.main.index.slide1.content" /></h4>
                </div>
            </div>
            <div class="carousel-item">
                <asset:image class="d-block img-fluid" src="slide2.jpg" style="width:100%;" />
                <div class="carousel-caption d-none d-md-block" style="margin-bottom: 18%;">
                <h1 style="text-shadow: 1px 1px 6px #000000;"><g:message code="app.main.index.slide2.title" /></h1>
                <h4 style="text-shadow: 1px 1px 6px #000000;"><g:message code="app.main.index.slide2.content" /></h4>
                </div>
            </div>
            <div class="carousel-item">
                <asset:image class="d-block img-fluid" src="slide3.jpg" style="width:100%;" />
                <div class="carousel-caption d-none d-md-block" style="margin-bottom: 18%;">
                <h1 style="text-shadow: 1px 1px 6px #000000;"><g:message code="app.main.index.slide3.title" /></h1>
                <h4 style="text-shadow: 1px 1px 6px #000000;"><g:message code="app.main.index.slide3.content" /></h4>
                </div>
            </div>
            <div class="carousel-item">
                <asset:image class="d-block img-fluid" src="slide4.jpg" style="width:100%;" />
                <div class="carousel-caption d-none d-md-block" style="margin-bottom: 18%;">
                <h1 style="text-shadow: 1px 1px 6px #000000;"><g:message code="app.main.index.slide4.title" /></h1>
                <h4 style="text-shadow: 1px 1px 6px #000000;"><g:message code="app.main.index.slide4.content" /></h4>
                </div>
            </div>


        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"  style="display: none;"></span>
            <span class="sr-only"  style="display: none;">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"  style="display: none;"></span>
            <span class="sr-only"  style="display: none;">Next</span>
        </a>
    </div>
</section>
<!-- END HOME -->

<!-- SERVICES -->
<section class="section">
    <div class="container">

        <div class="row">
            <div class="col-sm-12 text-center">
                <h2 class="title zoomIn animated wow" data-wow-delay=".1s" style="text-shadow: 1px 1px 6px #000000;"><g:message code="app.main.index.services" /></h2>

            </div>
        </div>

        <div class="row">
                <div class="col-4">
                    <div class="hovereffect">
                        <asset:image class="img-responsive" src="products3.jpg"/>
                        <div class="overlay" style="padding-top: 50%">
                            <h2><g:message code="app.main.index.mobileprotection" /></h2>
                            <a class="info" href="#"><i class="ti-mobile"></i></a>
                        </div>
                    </div>
                </div>

                <div class="col-4">
                    <div class="hovereffect">
                        <asset:image class="img-responsive" src="products.jpg"/>
                        <div class="overlay" style="padding-top: 50%">
                            <h2><g:message code="app.main.index.extendedwarranty" /></h2>
                            <a class="info" href="#"><i class="ti-package"></i></a>
                        </div>
                    </div>
                </div>

                <div class="col-4">
                    <div class="hovereffect">
                        <asset:image class="img-responsive" src="products2.jpg"/>
                        <div class="overlay" style="padding-top: 50%">
                            <h2><g:message code="app.main.index.securityandutility" /></h2>
                            <a class="info" href="#"><i class="ti-shield"></i></a>
                        </div>
                    </div>



            </div>



            </div>

        </div>
        <!--end row -->

    </div>
</section>
<!-- END SERVICES -->


<!-- SERVICES -->
%{--
<section class="section">
    <div class="container">

--}%
       %{-- <div class="row">
            <div class="col-sm-12 text-center">
                <h2 class="title zoomIn animated wow" data-wow-delay=".1s" style="text-shadow: 1px 1px 6px #000000;"><g:message code="app.main.index.testimonials" /></h2>--}%
                <!--Section: Testimonials v.1-->
                %{--<section class="pb-3 text-center">


                    <div class="row">

                        <!--Grid column-->
                        <div class="col-lg-4 col-md-12 mb-r">

                            <!--Card-->
                            <div class="card testimonial-card">

                                <!--Background color-->
                                <div class="card-up info-color"></div>

                                <!--Avatar-->
                                <div class="avatar">
                                    <img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(9).jpg" class="rounded-circle img-responsive">
                                </div>

                                <div class="card-body">
                                    <!--Name-->
                                    <h4 class="mt-1">
                                        <strong>John Doe</strong>
                                    </h4>
                                    <hr>
                                    <!--Quotation-->
                                    <p class="dark-grey-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos, adipisci.</p>
                                </div>

                            </div>
                            <!--Card-->

                        </div>
                        <!--Grid column-->

                        <!--Grid column-->
                        <div class="col-lg-4 col-md-12 mb-r">

                            <!--Card-->
                            <div class="card testimonial-card">

                                <!--Background color-->
                                <div class="card-up blue-gradient">
                                </div>

                                <!--Avatar-->
                                <div class="avatar">
                                    <img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(20).jpg" class="rounded-circle img-responsive">
                                </div>

                                <div class="card-body">
                                    <!--Name-->
                                    <h4 class="mt-1">
                                        <strong>Anna Aston</strong>
                                    </h4>
                                    <hr>
                                    <!--Quotation-->
                                    <p class="dark-grey-text">Neque cupiditate assumenda in maiores repudiandae mollitia architecto.</p>
                                </div>

                            </div>
                            <!--Card-->

                        </div>
                        <!--Grid column-->

                        <!--Grid column-->
                        <div class="col-lg-4 col-md-12 mb-r">

                            <!--Card-->
                            <div class="card testimonial-card">

                                <!--Background color-->
                                <div class="card-up indigo"></div>

                                <!--Avatar-->
                                <div class="avatar">
                                    <img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(10).jpg" class="rounded-circle img-responsive">
                                </div>

                                <div class="card-body">
                                    <!--Name-->
                                    <h4 class="mt-1">
                                        <strong>Maria Kate</strong>
                                    </h4>
                                    <hr>
                                    <!--Quotation-->
                                    <p class="dark-grey-text">Delectus impedit saepe officiis ab aliquam repellat, rem totam unde ducimus.</p>
                                </div>

                            </div>
                            <!--Card-->

                        </div>
                        <!--Grid column-->

                    </div>

                </section>--}%
                <!--Section: Testimonials v.1-->

           %{-- </div>
        </div>--}%



%{--
    </div>
    <!--end row -->

</div>
</section>--}%
<!-- END SERVICES -->



<!-- SCREENSHOTS -->


<!-- PRICING -->
%{--
<section class="section" id="pricing">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 text-center">
                <h1 class="title zoomIn animated wow" data-wow-delay=".1s" style="text-shadow: 1px 1px 6px #000000;"><g:message code="app.main.index.simplepricing" /></h1>
                <p class="sub-title zoomIn animated wow" data-wow-delay=".2s">Constituto voluptatibus mei ex. Eum soleat lorem Ipsum is simply dummy
                    <br/> text of the printing and typesetting industry. </p>
            </div>
        </div>
        <!-- end row -->

        <div class="row justify-content-center">
            <div class="col-lg-10">
                <div class="row">

                    <!-- Pricing Item -->
                    <div class="col-md-4">
                        <div class="pricing-item animated fadeInLeft wow" data-wow-delay=".3s">
                            <div class="pricing-item-inner">
                                <div class="pricing-wrap">

                                    <div class="pricing-num pricing-num-pink">
                                        <sup>$</sup>99
                                    </div>
                                    <div class="pr-per">
                                        per month
                                    </div>

                                    <!-- Pricing Title -->
                                    <div class="pricing-title">
                                        Starter Pack
                                    </div>
                                    <!-- Pricing Features -->
                                    <div class="pricing-features">
                                        <ul class="sf-list pr-list">
                                            <li>5 Projects</li>
                                            <li>1 GB Storage</li>
                                            <li>No Domain</li>
                                            <li>1 User</li>
                                            <li>Free Support</li>
                                        </ul>
                                    </div>

                                    <!-- Button -->
                                    <div class="pr-button">
                                        <a href="#" class="btn btn-danger btn-rnd">Buy Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Pricing Item -->

                    <!-- Pricing Item -->
                    <div class="col-md-4">
                        <div class="pricing-item main animated fadeInLeft wow" data-wow-delay=".5s">
                            <div class="ribbon"><span>POPULAR</span></div>
                            <div class="pricing-item-inner">
                                <div class="pricing-wrap">

                                    <div class="pricing-num">
                                        <sup>$</sup>199
                                    </div>
                                    <div class="pr-per">
                                        per month
                                    </div>

                                    <!-- Pricing Title -->
                                    <div class="pricing-title">
                                        Professional Pack
                                    </div>
                                    <!-- Pricing Features -->
                                    <div class="pricing-features">
                                        <ul class="sf-list pr-list">
                                            <li>5 Projects</li>
                                            <li>1 GB Storage</li>
                                            <li>No Domain</li>
                                            <li>1 User</li>
                                            <li>Free Support</li>
                                        </ul>
                                    </div>
                                    <!-- Button -->
                                    <div class="pr-button">
                                        <a href="#" class="btn btn-danger btn-rnd">Buy Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Pricing Item -->

                    <!-- Pricing Item -->
                    <div class="col-md-4">
                        <div class="pricing-item animated fadeInLeft wow" data-wow-delay=".7s">
                            <div class="pricing-item-inner">
                                <div class="pricing-wrap">

                                    <div class="pricing-num pricing-num-yellow">
                                        <sup>$</sup>299
                                    </div>
                                    <div class="pr-per">
                                        per month
                                    </div>

                                    <!-- Pricing Title -->
                                    <div class="pricing-title">
                                        Enterprise Pack
                                    </div>
                                    <!-- Pricing Features -->
                                    <div class="pricing-features">
                                        <ul class="sf-list pr-list">
                                            <li>5 Projects</li>
                                            <li>1 GB Storage</li>
                                            <li>No Domain</li>
                                            <li>1 User</li>
                                            <li>Free Support</li>
                                        </ul>
                                    </div>
                                    <!-- Button -->
                                    <div class="pr-button">
                                        <a href="#" class="btn btn-danger btn-rnd">Buy Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Pricing Item -->

                </div>
            </div>
        </div>
    </div>
</section>
--}%

<!-- END PRICING -->







</body>
</html>
