<%--
  Created by IntelliJ IDEA.
  User: shiva
  Date: 14/3/18
  Time: 1:20 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
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



    </style>
</head>

<body>
<section class="section">
    <div class="container">

        <div class="row">
            <div class="col-sm-12 text-center">
                <h2 class="title zoomIn animated wow" data-wow-delay=".1s" style="text-shadow: 1px 1px 6px #000000;"><g:message code="app.main.index.services" /></h2>

            </div>
        </div>

        <div class="row">
            <div class="col-4">
                <div class="hovereffect" style="height: 80%">
                    <asset:image class="img-responsive" src="mobilepro.jpg" style="height: 100%;width: 100%"/>
                    <div class="overlay" style="padding-top: 50%">
                        <h2><g:message code="app.main.index.mobileprotection" /></h2>
                    <g:link controller="home" action="mobileProtection" class="info" ><i class="ti-mobile"></i></g:link>
                    </div>
                </div>
            </div>

            <div class="col-4">
                <div class="hovereffect" style="height: 80%">
                    <asset:image class="img-responsive" src="exetendWar.jpg"style="height: 100%;width: 100%"/>
                    <div class="overlay" style="padding-top: 50%">
                        <h2><g:message code="app.main.index.extendedwarranty" /></h2>
                        <g:link controller="home" action="extendedWarranty" class="info"><i class="ti-package"></i></g:link>
                    </div>
                </div>
            </div>

            <div class="col-4" style="height: 80%">
                <div class="hovereffect">
                    <asset:image class="img-responsive" src="sec.jpg" style="height: 100%;width: 100%"/>
                    <div class="overlay" style="padding-top: 50%">
                        <h2><g:message code="app.main.index.securityandutility" /></h2>
                    <g:link controller="home" action="securityUtility" class="info"><i class="ti-shield"></i></g:link>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--end row -->
</div>
</section>
</body>
</html>