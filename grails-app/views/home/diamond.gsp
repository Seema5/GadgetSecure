<%--
  Created by IntelliJ IDEA.
  User: shiva
  Date: 28/2/18
  Time: 10:54 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="customLayout"/>
    <style>
    #ryt{
        position: absolute;
        top: -100px;
        right: 388px;
        /*width: 370px;*/
        border-radius: 4px;
        z-index: 1;
        text-align:center;
        font-weight: 300;
        font-size: 18px;
        margin-bottom: 10px;
        padding: 15px;
        margin-right: 3%;
        margin-top: 20%;
        font-size: 30px;
        font-weight: bolder;
        color: red;

    }
    </style>
</head>

<body>
<section class="home" data-stellar-background-ratio="0.5">

    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">

        <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
                <asset:image class="d-block img-fluid" src="1233.jpg" style="width:100%;height: 240px" />

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
<g:link controller="home" action="mobileDiamond" style="color: blue;float: right;margin-right: 4%">To Be Continue...</g:link>
<div class="col-10" style="padding: 5%;margin-right: -18%;text-align:center;">

    <select id="selectbox" name="" onchange="javascript:location.href = this.value;" style="margin-left: 35%;width: 30%">
        <option value="#" selected>select</option>
        <option value="/Home/mobileDiamond">Mobile</option>
        <option value="/Home/laptopDiamond">Laptop</option>
        <option value="/Home/printerDiamond">Printer</option>
        <option value="/Home/desktopDiamond">Desktop</option>

    </select>
</div>

<script type="text/javascript">
    window.onload = function(){
        location.href=document.getElementById("selectbox").value;
    }
</script>

</body>
</html>