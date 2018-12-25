<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Gadget Secure">
    <meta name="author" content="Gadget Secure">

    <title>Gadget Secure</title>

    <link href='https://fonts.googleapis.com/css?family=Roboto:400,300,500' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600' rel='stylesheet' type='text/css'>

    <!-- Bootstrap core CSS -->
    <asset:stylesheet src="bootstrap.min.css"/>

    <!-- Animate -->
    <asset:stylesheet src="animate.css"/>

    <!-- Icon-font -->
    <asset:stylesheet src="themify-icons.css"/>

    <!-- Custom styles for this template -->
    <asset:stylesheet src="style.css"/>
    %{--flags library--}%
    <asset:stylesheet src="flags.min.css"/>

    <style>


@import url(https://fonts.googleapis.com/css?family=Lato);
@import url(https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.css);

a {
    text-decoration: none;
    color: #fff;
}
p > a:hover{
    color: #d9d9d9;
    text-decoration:  underline;
}
h1,
h2,
h3,
h4,
h5,
h6 {
    margin:  1% 0 1% 0;
}
._12 {
    font-size: 1.2em;
}
._14 {
    font-size: 1.4em;
}
ul {
    padding:0;
    list-style: none;
}
.footer-social-icons {
    /*width: 350px;*/
    display:block;
    margin: 0 auto;
}
.social-icon {
    color: #fff;
}
ul.social-icons {
    margin-top: 10px;
}
.social-icons li {
    vertical-align: top;
    display: inline;
    height: 100px;
}
.social-icons a {
    color: #fff;
    text-decoration: none;
}
.fa-facebook {
    padding:10px 14px;
    -o-transition:.5s;
    -ms-transition:.5s;
    -moz-transition:.5s;
    -webkit-transition:.5s;
    transition: .5s;
    background-color: #322f30;
}
.fa-facebook:hover {
    background-color: #3d5b99;
}
.fa-twitter {
    padding:10px 12px;
    -o-transition:.5s;
    -ms-transition:.5s;
    -moz-transition:.5s;
    -webkit-transition:.5s;
    transition: .5s;
    background-color: #322f30;
}
.fa-twitter:hover {
    background-color: #00aced;
}
.fa-rss {
    padding:10px 14px;
    -o-transition:.5s;
    -ms-transition:.5s;
    -moz-transition:.5s;
    -webkit-transition:.5s;
    transition: .5s;
    background-color: #322f30;
}
.fa-rss:hover {
    background-color: #eb8231;
}
.fa-youtube {
    padding:10px 14px;
    -o-transition:.5s;
    -ms-transition:.5s;
    -moz-transition:.5s;
    -webkit-transition:.5s;
    transition: .5s;
    background-color: #322f30;
}
.fa-youtube:hover {
    background-color: #e64a41;
}
.fa-linkedin {
    padding:10px 14px;
    -o-transition:.5s;
    -ms-transition:.5s;
    -moz-transition:.5s;
    -webkit-transition:.5s;
    transition: .5s;
    background-color: #322f30;
}
.fa-linkedin:hover {
    background-color: #0073a4;
}
.fa-google-plus {
    padding:10px 9px;
    -o-transition:.5s;
    -ms-transition:.5s;
    -moz-transition:.5s;
    -webkit-transition:.5s;
    transition: .5s;
    background-color: #322f30;
}
.fa-google-plus:hover {
    background-color: #e25714;
}
</style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    <g:layoutHead/>

</head>

<body>
<!-- Pre-loader -->
<div class="preloader">
    <div class="status">&nbsp;</div>
</div>



<nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top">
    <div class="container" style="max-width: 100% !important;">
        <g:link controller="home" action="index" class="navbar-brand logo"><asset:image src="logo.png" style="width: 50%;"/> </g:link>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample07" aria-controls="navbarsExample07" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarsExample07">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <g:link class="nav-link" controller="home" action="index"><i class="ti-home"></i> <g:message code="app.main.index.home" /></g:link>
                </li>
                <li class="nav-item active">
                    <g:link class="nav-link" controller="home" action="salesMotivation"><i class="ti-stats-up"></i> <g:message code="app.main.index.salesmotivation" /></g:link>
                </li>
               %{-- <li class="nav-item active">
                    <g:link class="nav-link" controller="home" action=""><i class="ti-tablet"></i> </g:link>
                </li>--}%

                <li class="nav-item active dropdown">

                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink4" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="ti-tablet"></i> <g:message code="app.main.index.devicecategories" />
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="#"><i class="ti-mobile"></i> <g:message code="app.main.index.mobile" /></a>
                        <a class="dropdown-item" href="#"><i class="ti-tablet"></i> <g:message code="app.main.index.tablet" /></a>
                        <a class="dropdown-item" href="#"><i class="ti-desktop"></i> <g:message code="app.main.index.laptop" /></a>
                        <a class="dropdown-item" href="#"><i class="ti-printer"></i> <g:message code="app.main.index.printers" /></a>
                        <a class="dropdown-item" href="#"><i class="ti-archive"></i> <g:message code="app.main.index.accessriesandperipheral" /></a>
                    </div>

                </li>



                <li class="nav-item active dropdown">

                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="ti-package"></i> <g:message code="app.main.index.membershipplan" />
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">

                        <g:link class="dropdown-item" controller="home" action="platinum" onmouseover = 'playt()' onmouseout = 'pltyy()' ><i class="ti-layers-alt"></i> <g:message code="app.main.index.platinum" /></g:link>

                        <g:link class="dropdown-item" controller="home" action="gold" ><i class="ti-layers-alt"></i> <g:message code="app.main.index.gold" /></g:link>
                        <g:link class="dropdown-item" controller="home" action="diamond" ><i class="ti-layers-alt"></i> <g:message code="app.main.index.diamond" /></g:link>
                    </div>
                    %{--
                    <ul class="navbar-nav ml-auto" style="display: none;" id="p1" >
                        <li class="nav-item active">
                            <a href="#" style="color: black;">Mobile</a>
                        </li>
                        <li class="nav-item active">
                            <a href="#" style="color: black;">Laptop</a>
                        </li>
                    </ul>
--}%

                </li>


                <li class="nav-item active dropdown">

                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="ti-shopping-cart"></i> <g:message code="app.main.index.services" />
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="#"><i class="ti-layers-alt"></i> <g:message code="app.main.index.mobileprotection" /></a>
                        <g:link class="dropdown-item" controller="home" action="extendedWarranty"><i class="ti-layers-alt"></i> <g:message code="app.main.index.extendedwarranty" /></g:link>
                        <a class="dropdown-item" href="#"><i class="ti-layers-alt"></i> <g:message code="app.main.index.securityandutility" /></a>
                    </div>

                </li>

                %{--<li class="nav-item active">--}%
                    %{--<g:link controller="home" action="ourproducts" class="nav-link"><i class="ti-shopping-cart"></i> <g:message code="app.main.index.products" /></g:link>--}%
                %{--</li>--}%


                <li class="nav-item active dropdown">

                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="ti-receipt"></i> <g:message code="app.main.index.claimprocess" />
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink1">
                        <g:link controller="claims" action="index" class="dropdown-item"><i class="ti-help"></i> <g:message code="app.main.index.howtoclaim" /></g:link>

                    </div>

                </li>


               %{-- <li class="nav-item active">
                    <g:link controller="home" action="faq" class="nav-link"><i class="ti-headphone-alt"></i> <g:message code="app.main.index.faq" /></g:link>
                </li>--}%

                <li class="nav-item active dropdown">

                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="ti-flag-alt-2"></i> <g:message code="app.main.index.lang" />
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink2">
                        <a href="./?lang=en" class="dropdown-item"><img src="blank.gif" class="flag flag-gb" />&nbsp;&nbsp;English</a>
                        <a href="./?lang=hi" class="dropdown-item"><img src="blank.gif" class="flag flag-in" />&nbsp;&nbsp;हिन्दी</a>

                    </div>

                </li>

            </ul>

        </div>
    </div>
</nav>

<div class="clearfix"></div>

<g:layoutBody/>

<footer class="footer bg-light" style="border-top: 1px solid #0000001a; background-color: #FFFFFF !important;">

        <div style="background-color: #FFFFFF ; padding: 10px;">
            <b><div class="row" style="font-size: 25px;margin-left: 10%;color:#F39C12">
                    <div class="col-3">
                        <span><i class="ti-control-play"></i><g:message code="app.main.index.gettingstarted" /></span>
                    </div>
                <div class="col-3">
                <span><i class="ti-face-smile"></i><g:message code="app.main.index.careers" /></span>

                    </div>
                <div class="col-3">
                    <span><i class="ti-rss-alt"></i>&nbsp;<g:message code="app.main.index.partner" /></span>

                </div>
                    <div class="col-3">
                        <span><i class="ti-help-alt"></i> <g:message code="app.main.index.helpandsupport" /></span>
                    </div>
                </div></b><br />

                <div class="row" style="margin-left: 10%; color:#0b0c0f">
                    <div class="col-3">
                        <g:link controller="home" action="aboutus" style="color: black"> <i class="ti-info-alt"></i>&nbsp;<g:message code="app.main.index.aboutus" /></g:link>
                    </div>
                    <div class="col-3">
                        <a href="#" style="color:#0b0c0f"><i class="ti-time"></i> <g:message code="app.main.index.currentopenings" /></a>
                    </div>
                    <div class="col-3">
                        <g:link controller="utility" action="becomeaDealer" style="color: black"><i class="ti-medall"></i><g:message code="app.main.index.becomeadealer" /></g:link>
                    </div>
                    <div class="col-3">
                        <a href="#" style="color:#0b0c0f"><i class="ti-support"></i> <g:message code="app.main.index.ticketstatusandsupport" /></a>
                    </div>
                </div>
                <div class="row" style="margin-left: 10%;color:#0b0c0f">
                    <div class="col-3">
                        <a href="#" style="color:#0b0c0f"><i class="ti-bolt"></i> <g:message code="app.main.index.amazingservice" /></a>
                    </div>
                    <div class="col-3">
                        <a href="#" style="color:#0b0c0f"><i class="ti-file"></i> <g:message code="app.main.index.submitresume" /></a>
                    </div>
                    <div class="col-3">
                        <a href="#" style="color:#0b0c0f"> &nbsp;</a>
                    </div>
                    <div class="col-3">
                        <a href="#" style="color:#0b0c0f"><i class="ti-headphone-alt"></i> <g:message code="app.main.index.faq" /></a>
                    </div>
                </div>
                <div class="row" style="margin-left: 10%;color:#0b0c0f">
                    <div class="col-3">
                        <a href="#" style="color:#0b0c0f"><i class="ti-bar-chart"></i> <g:message code="app.main.index.features" /></a>
                    </div>
                    <div class="col-3">
                        <a href="#">&nbsp;</a>
                    </div>
                    <div class="col-3">
                        <a href="#">&nbsp;</a>
                    </div>
                    <div class="col-3">
                        <a href="#" style="color:#0b0c0f"><i class="ti-headphone-alt"></i> <g:message code="app.main.index.contactus" /></a>
                    </div>
                </div>
                <div class="row" style="margin-left: 10%;color:#0b0c0f">
                    <div class="col-3">
                        <a href="#" style="color:#0b0c0f"><i class="ti-comments-smiley"></i> <g:message code="app.main.index.reviews" /></a>
                    </div>
                    <div class="col-3">
                        <a href="#">&nbsp;</a>
                    </div>
                    <div class="col-3">
                        <a href="#">&nbsp;</a>
                    </div>
                    <div class="col-3">
                        <a href="#" style="color:#0b0c0f"><i class="ti-location-pin"></i><g:message code="app.main.index.findastore" /></a>
                    </div>
                </div>
                <div class="row" style="margin-left: 10%;">
                    <div class="col-3">
                        <a href="#"style="color:#0b0c0f"><i class="ti-package" ></i><g:message code="app.main.index.membershipplan" /></a>
                    </div>
                    <div class="col-3">
                        <a href="#">&nbsp;</a>
                    </div>
                    <div class="col-3">
                        <a href="#">&nbsp;</a>
                    </div>
                    <div class="col-3">
                        <a href="#" style="color:#0b0c0f"><i class="ti-headphone-alt"></i> <g:message code="app.main.index.unlimited247support" /></a>
                    </div>
                </div>
                <div class="row" style="margin-left: 10%;">
                    <div class="col-3">
                        <a href="#"style="color:#0b0c0f"><i class="ti-support" ></i>&nbsp;<g:message code="app.main.index.gadgetsecurecare" /></a>
                    </div>
                    <div class="col-3">
                        <a href="#">&nbsp;</a>
                    </div>
                    <div class="col-3">
                        <a href="#">&nbsp;</a>
                    </div>
                    <div class="col-3">
                        <a href="#"> &nbsp;</a>
                    </div>
                </div>
<hr />

        </div>
        <div class="row" style="color: #000;font-weight: bold; margin-bottom: -8px;margin-left:10%">
            <div class="col-6">

                <div class="footer-social-icons">

                    <ul class="social-icons">
                        <li><a href="" class="social-icon"> <i class="fa fa-facebook"></i></a></li>
                        <li><a href="" class="social-icon"> <i class="fa fa-twitter"></i></a></li>
                        <li><a href="" class="social-icon"> <i class="fa fa-rss"></i></a></li>
                        <li><a href="" class="social-icon"> <i class="fa fa-youtube"></i></a></li>
                        <li><a href="" class="social-icon"> <i class="fa fa-linkedin"></i></a></li>
                        <li><a href="" class="social-icon"> <i class="fa fa-google-plus"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-6 text-center">
                <a href="http://isrdaes.com" target="_blank"><p class="copyright" style="font-size: 60%; color: #1b1e21;">All rights reserved. ISRDAES &copy; 2018</p></a>

            </div>
        </div>
        <!-- end row -->

    <!-- end container -->
</footer>

<!-- js placed at the end of the document so the pages load faster -->
<asset:javascript src="jquery.min.js"/>
<asset:javascript src="popper.min.js"/>
<asset:javascript src="bootstrap.min.js"/>
<!-- Jquery easing -->
<asset:javascript src="jquery.easing.1.3.min.js"/>
<asset:javascript src="SmoothScroll.js"/>
<asset:javascript src="wow.min.js"/>
<asset:javascript src="jquery.waypoints.min.js"/>
<asset:javascript src="jquery.counterup.min.js"/>

<!--common script for all pages-->
<asset:javascript src="jquery.app.js"/>

<script type="text/javascript">
    jQuery(document).ready(function($) {
        $('.counter').counterUp({
            delay: 100,
            time: 1200
        });
    });


        function playt(){
            $('#p1').css('display','block');
            $('#p1').css('poistion','absolute');

        }
        function pltyy() {
            $('#p1').css('display','none');
        }

</script>

</body>

</html>