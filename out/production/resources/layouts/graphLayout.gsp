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


    <g:layoutHead/>

</head>

<body>
<!-- Pre-loader -->
<div class="preloader">
    <div class="status">&nbsp;</div>
</div>

<div class="tagline">
    <div class="container">
        <div class="float-left">
            <div class="phone">
                <i class=" ti-mobile"></i> 1800 123 45 67
            </div>
            <div class="email">
                <a href="mailto:#">
                    <i class=" ti-email"></i> support@gadgetsecure.com
                </a>
            </div>
        </div>
        <div class="float-right">
            <ul class="top_socials">
                <li><a href="javascript:void(0);"><i class=" ti-facebook"></i></a></li>
                <li><a href="javascript:void(0);"><i class=" ti-skype"></i></a></li>
                <li><a href="javascript:void(0);"><i class=" ti-twitter-alt"></i></a></li>
                <li><a href="javascript:void(0);"><i class=" ti-github"></i></a></li>
            </ul>
        </div>
        <div class="clearfix"></div>
    </div>
</div>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand logo" href="#"><asset:image src="logo.png" style="width: 50%;"/> </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample07" aria-controls="navbarsExample07" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarsExample07">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#"><i class="ti-align-right"></i> DASHBOARD</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="#faq"><i class="ti-info-alt"></i> FAQ</a>
                </li>
            </ul>

        </div>
    </div>
</nav>
<div class="clearfix"></div>
<g:layoutBody/>

<footer class="footer bg-dark fixed-bottom">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 text-center">
                <a href="http://isrdaes.com" target="_blank"><p class="copyright" style="font-size: 60%;">ISRDAES &copy; 2018</p></a>
            </div>
        </div>
        <!-- end row -->
    </div>
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
</script>




</body>


</html>