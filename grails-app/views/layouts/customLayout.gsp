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

    <link href="https://use.fontawesome.com/releases/v5.0.7/css/all.css" rel="stylesheet">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

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

 .dropdown-submenu {
     position: relative;
 }

.dropdown-submenu .dropdown-menu {
    top: 0;
    left: 100%;
    margin-top: -1px;
}

.animated {
    -webkit-transition: height 0.2s;
    -moz-transition: height 0.2s;
    transition: height 0.2s;
}

.stars
{
    margin: 20px 0;
    font-size: 24px;
    color: #d17581;
}
.btn-success {
    background-color: #f29c13 !important;
    border: 1px solid #f29c13 !important;
}
.goog-te-banner-frame.skiptranslate {display: none !important;}
body { top: 0px !important; }
.goog-te-gadget-icon{
    display: none !important;
}
#goog-gt-tt{
    display: none !important;
}
#goog-gt-tt{
    display: none !important;

}
.goog-logo-link {
    display:none !important;
}

.goog-te-gadget{
    color: transparent !important;
}
    .goog-te-combo{
        margin-top: -2% !important;
    }

    .goog-te-combo{
        width:60%;
    }

    .nav-link{
        font-size: 120%;
    }
</style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    <g:layoutHead/>

</head>

<body style="overflow-y: hidden;">
<!-- Pre-loader -->
<div class="preloader">
    <div class="status">&nbsp;</div>
</div>



<nav class="navbar navbar-expand-lg navbar-light sticky-top" style="background-color: #dfe0e0">
    <div class="container" style="max-width: 100% !important;">
        <g:link controller="home" action="index" class="navbar-brand logo"><asset:image src="logo.png" style="width: 38%;"/> </g:link>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample07" aria-controls="navbarsExample07" aria-expanded="false" aria-label="Toggle navigation" style="margin-left: 82%;
    margin-top: -44px;">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarsExample07" style="margin-left: 2%;">
            <ul class="navbar-nav ml-auto" style="font-size: 12px">
                <li class="nav-item active">
                    <g:link class="nav-link" controller="home" action="index"><i class="ti-home"></i> <g:message code="app.main.index.home" /></g:link>
                </li>
                <li class="nav-item active">
                    <g:link class="nav-link" controller="home" action="salesMotivation"><i class="ti-stats-up"></i> <g:message code="app.main.index.salesmotivation" /></g:link>
                </li>
               %{-- <li class="nav-item active">
                    <g:link class="nav-link" controller="home" action=""><i class="ti-tablet"></i> </g:link>
                </li>--}%

                %{--<li class="nav-item active dropdown">

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

                </li>--}%



                <li class="nav-item active dropdown">

                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="ti-package"></i> <g:message code="app.main.index.membershipplan" />
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">

                        <g:link class="dropdown-item" controller="home" action="platinum" ><i class="fab fa-product-hunt"></i>&nbsp;&nbsp;<g:message code="app.main.index.platinum" /></g:link>
                        <g:link class="dropdown-item" controller="home" action="gold" ><i class="fab fa-goodreads"></i>&nbsp;&nbsp;<g:message code="app.main.index.gold" /></g:link>
                        <g:link class="dropdown-item" controller="home" action="diamond" ><i class="far fa-gem"></i>&nbsp;&nbsp;<g:message code="app.main.index.diamond" /></g:link>
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
                        <g:link class="dropdown-item" controller="home" action="mobileProtection"><i class="fas fa-mobile-alt"></i>&nbsp;&nbsp;<g:message code="app.main.index.mobileprotection" /></g:link>
                        <g:link class="dropdown-item" controller="home" action="extendedWarranty"><i class="fas fa-external-link-square-alt"></i>&nbsp;&nbsp;<g:message code="app.main.index.extendedwarranty" /></g:link>
                        <g:link class="dropdown-item" controller="home" action="securityUtility"><i class="fas fa-lock"></i>&nbsp;&nbsp;<g:message code="app.main.index.securityandutility" /></g:link>
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
            <sec:ifAllGranted roles="ROLE_ADMIN">
                <li class="nav-item active dropdown">

                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownAdmin" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="ti-user"></i>Admin
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <g:link class="dropdown-item" controller="admin" action="jobPost"><i class="ti-pencil-alt"></i>&nbsp;&nbsp;Post New Job</g:link>

                    </div>

                </li>
            </sec:ifAllGranted>
            <sec:ifAllGranted roles="ROLE_USER">
                <li>
                    <g:form controller="logout">
                        <i class="fas fa-sign-out-alt" style="color: black;"></i><g:submitButton class="btn btn-link" style="color:black;text-decoration: none; font-weight: bold;" name="logout" value="Logout">Logout</g:submitButton>
                    </g:form>
                </li>
            </sec:ifAllGranted>

               %{-- <li class="nav-item active">
                    <g:link controller="home" action="faq" class="nav-link"><i class="ti-headphone-alt"></i> <g:message code="app.main.index.faq" /></g:link>
                </li>--}%

                %{--<li class="nav-item active dropdown">

                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="ti-flag-alt-2"></i> <g:message code="app.main.index.lang" />
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink2">
                        <a href="./?lang=en" class="dropdown-item"><img src="blank.gif" class="flag flag-gb" />&nbsp;&nbsp;English</a>
                        <a href="./?lang=hi" class="dropdown-item"><img src="blank.gif" class="flag flag-in" />&nbsp;&nbsp;हिन्दी</a>
                    </div>
                </li>--}%
            </ul>
        </div>
    </div>
</nav>
<div class="clearfix"></div>
<div class="w3-sidebar w3-bar-block w3-card w3-animate-right" style="width:35%;height:28%;margin-top:10%;display:none;right:0;background-color:white;color:black;border-radius: 5px 0 0 5px" id="mySidebar">
    <button onclick="w3_close()" class="w3" style="float:right;margin-left: 1%;color:black" >&times;</button>
    <p style="text-align: center"><i class="fas fa-map-pin" style="font-size:35px;color:orange;">&nbsp;</i>India — Based on your Internet address</p>


        <p style="text-align: center"><strong>&nbsp;Call us at  0761-4924739 | 0761-2404053</strong></p>

        <p style="text-align: center"><i class="fas fa-envelope" style="font-size:25px;color:orange;"></i>&nbsp;E-mail us: support@gadgetsecure.com</p>

        <p style="text-align: center"><g:message code="app.main.index.gadgetsecurecare" /> / <g:message code="app.main.index.unlimited247support" /></p>

</div>

<!-- Page Content -->
<div class="button">
    <button class="w3-button" id='contact' onclick="w3_open()" style="width:10%;background-color:#ed1a28;color:white;margin-left:90%;margin-top: 8%;z-index:1;position: fixed;border-radius: 5px 0 0 5px">
        <i class="fas fa-phone-square" style="font-size:20px;"></i><br>Contact Us</button>

</div>

<g:layoutBody/>

<footer class="footer bg-light" style="border-top: 1px solid #0000001a; background-color:#21252926 !important;">

    %{--footer strat here--}%

        <div style=" padding: 10px;">
            <b><div class="row" style="font-size: 100%;margin-left: 10%;color:#ed1a28;">

                    <div class="col-3">
                        <div><i class="ti-control-play"></i>&nbsp;&nbsp;Getting Started</div>
                        <ul>
                            <li><g:link controller="home" action="aboutus" style="color: black"> <i class="ti-info-alt"></i>&nbsp;&nbsp;<g:message code="app.main.index.aboutus" /></g:link></li>
                            <li><g:link controller="utility" action="amazingService" style="color:#0b0c0f"><i class="ti-bolt"></i>&nbsp;&nbsp;<g:message code="app.main.index.amazingservice" /></g:link></li>
                            <li><g:link controller="home" action="securityUtility" style="color:#0b0c0f"><i class="ti-bar-chart"></i>&nbsp;&nbsp;<g:message code="app.main.index.features" /></g:link></li>
                            <li>&nbsp;</li>
                            <li><i class="far fa-handshake"></i>&nbsp;&nbsp;Partners</li>
                            <li><g:link controller="utility" action="becomeaDealer" style="color: black"><i class="ti-medall"></i>&nbsp;&nbsp;<g:message code="app.main.index.becomeadealer" /></g:link></li>
                        </ul>
                    </div>
                <div class="col-3">
                        <div><i class="ti-face-smile"></i>&nbsp;&nbsp;Careers</div>
                            <ul>
                                <li><g:link controller="utility" action="currentOpening" style="color:#0b0c0f"><i class="ti-time"></i>&nbsp;&nbsp;<g:message code="app.main.index.currentopenings" /></g:link></li>
                                <li><g:link controller="utility" action="submitDetail" style="color:#0b0c0f"><i class="ti-file"></i>&nbsp;&nbsp;<g:message code="app.main.index.submitresume" /></g:link></li>
                                <li>&nbsp;</li>
                                <li>&nbsp;</li>
                                <li><i class="ti-user">&nbsp;</i>Admin</li>
                                <li>
                                        <sec:ifAllGranted roles="ROLE_ADMIN">
                                            <g:form controller="logout">
                                                <i class="fas fa-sign-out-alt" style="color: black;"></i><g:submitButton class="btn btn-link" style="color:black;text-decoration: none; font-weight: bold;" name="logout" value="Logout">Logout</g:submitButton>
                                            </g:form>

                                        </sec:ifAllGranted>
                                    <g:link controller="admin" action="adminHome" style="color: black;"><i class="fas fa-sign-in-alt"></i>&nbsp;&nbsp;Admin Login</g:link>
                                </li>
                            </ul>
                        </div>
                <div class="col-3">

                    <div><i class="ti-help-alt"></i>&nbsp;&nbsp;<g:message code="app.main.index.helpandsupport" /></div>
                    <ul>
                        <li><g:link controller="utility" action="faq" style="color:#0b0c0f"><i class="ti-headphone-alt"></i>&nbsp;&nbsp;<g:message code="app.main.index.faq" /></g:link></li>
                        <li><g:link controller="utility" action="findSitemap" style="color:#0b0c0f"><i class="ti-location-pin"></i>&nbsp;&nbsp;<g:message code="app.main.index.findastore" /></g:link></li>
                    </ul>
                </div>
                    <div class="col-3">
                        <div><i class="fas fa-globe"></i>&nbsp;&nbsp;Select Your Language</div>
                        <ul>
                            <li><div id="google_translate_element" style="margin-top: 2%;margin-left: 8%"></div></li>
                            <li>&nbsp;</li>
                            <li>&nbsp;</li>
                            <li>&nbsp;</li>
                            <li>&nbsp;</li>
                            <li><div class="well well-sm">
                                <div class="text-right">
                                    <a class="btn btn-success btn-green" href="#reviews-anchor" id="open-review-box">Feedback</a>
                                </div>

                                <div class="row" id="post-review-box" style="display:none;">
                                    <div class="col-md-12">
                                        <form accept-charset="UTF-8" action="" method="post" id="reviewForm">
                                            <input id="ratings-hidden" name="rating" type="hidden">
                                            <textarea class="form-control animated" cols="50" id="new-review" name="comment" placeholder="Enter your review here..." rows="5"></textarea>

                                            <div class="text-right">
                                                <div class="stars starrr" data-rating="0"></div>
                                                <a class="btn btn-danger btn-sm" href="#" id="close-review-box" style="display:none; margin-right: 10px;">
                                                    <i class="fas fa-times"></i>&nbsp;Cancel</a>
                                                <input class="btn btn-success btn-sm" onclick="saveReview()" type="submit" value="Save" />
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            </li>
                        </ul>
                    </div>
                </div></b><br />
            <span style="margin-left: 10%;font-weight: bolder;color: #006dba">Customer Rating : 8/10 <i class="fas fa-star" style="color: #f5bf02"></i><i class="fas fa-star" style="color: #f5bf02"></i><i class="fas fa-star" style="color: #f5bf02"></i><i class="fas fa-star" style="color: #f5bf02"></i><i class="far fa-star"></i></span>
<hr />  </div>


        <div class="row" style="margin-top: -2%">
            <div class="col-6 text-center">

                <div class="footer-social-icons">

                    <ul class="social-icons">
                        <li><a href="#" class="social-icon"> <i class="fa fa-facebook"></i></a></li>
                        <li><a href="#" class="social-icon"> <i class="fa fa-twitter"></i></a></li>
                        <li><a href="#" class="social-icon"> <i class="fa fa-rss"></i></a></li>
                        <li><a href="#" class="social-icon"> <i class="fa fa-youtube"></i></a></li>
                        <li><a href="#" class="social-icon"> <i class="fa fa-linkedin"></i></a></li>
                        <li><a href="#" class="social-icon"> <i class="fa fa-google-plus"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-6 text-center"><a href="http://isrdaes.com" target="_blank"><p class="copyright" style="font-size: 60%; color: #1b1e21;">&copy; 2018 ISRDAES All rights reserved. </p></a></div>

        </div>
        <!-- end row -->
    <!-- end container -->
</footer>

<!-- js placed at the end of the document so the pages load faster -->
<asset:javascript src="jquery.min.js"/>
<asset:javascript src="popper.min.js"/>
<asset:javascript src="bootstrap.min.js"/>
<!-- Jquery easing -->
<asset:javascript src="reviews.js" />
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

    function w3_open() {
        document.getElementById("mySidebar").style.display = "block";
        document.getElementById("contact").style.display = "none";
    }
    function w3_close() {
        document.getElementById("mySidebar").style.display = "none";
        document.getElementById("contact").style.display = "block";
    }



 function saveReview(){
     var rating=$('#ratings-hidden').val();
     var review=$('#new-review').val();
     if( rating != 0 && review != ""){
     $.ajax({
         url: "http://192.168.1.8:8080/utility/saveFeedback?rating="+rating+"&review="+review,
         cache: false,
         success: function(res) {
             console.log(res);
             if (res == 'success') {
             }
             else{
             }
         }
     });
     }else{
     }
 }

</script>
<script type="text/javascript">
    function googleTranslateElementInit() {
        new google.translate.TranslateElement({pageLanguage: 'en', layout: google.translate.TranslateElement.InlineLayout.HORIZONTAL}, 'google_translate_element');
    }
</script>

<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>

</body>
</html>