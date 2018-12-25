<%--
  Created by IntelliJ IDEA.
  User: vandana
  Date: 8/3/18
  Time: 3:52 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="customLayout"/>
</head>

<body>
<section class="home" data-stellar-background-ratio="0.5">

    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">

        <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
                <asset:image class="d-block img-fluid" src="14.png" style="width:100%;height: 240px" />
            </div>
            <div class="carousel-item">
                <asset:image class="d-block img-fluid" src="31.jpg" style="width:100%;height: 240px" />

            </div>
            <div class="carousel-item">
                <asset:image class="d-block img-fluid" src="newr.jpg" style="width:100%;height: 240px" />

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
<div class="heading" style="font-weight:bold;color:#e25827;text-align:center;"><h3>Gold Desktop Plan</h3></div>
<div id="mobile">
    <div class="row" style="margin-top: 3%;margin-bottom: 3%">
        <div class="col-2" style="text-align:center ;border: 1px solid #d4d4d4;border-radius: 5px;margin: 1%;margin-left: 4%;padding: 1%">
            <div class="item clearfix">
                <div class="text_center plan_box">
                    <div class="plan_name btn btn-success btn-green" style="width: 100%;">GadgetSecure</div><br/>
                    <br />
                    <div class="plan_price"><i class="fi flaticon-rupee1"></i><input type="radio" name="plan" id="p1" onclick="newfunc()" />&nbsp;&nbsp;<span class="text">₹ 999</span></div><br />
                    <ul>
                        <li>Handset Value (MRP) Upto - Rs. 10,000</li><br />
                        <li>Cashless Facility *</li><br />
                        <li>Insurance Validity - 1 Year</li><br />
                        <li>Application Validity - 1 Year</li><br />
                        <li>Accidental Damage Insurance</li><br />
                        <li>Liquid Damage Insurance</li><br />
                        <li>Physical Damage Insurance</li><br />
                        <li>Technical Support</li><br />
                        <li>GadgetControl</li><br />
                    </ul>
                    <a href="/login/auth" id="b1" class="btn btn-success btn-green disabled" style="margin-bottom: 10px;padding-right: 10px;padding-left: 10px;color: black;border: 1px solid #e258277a;border-radius:5px ">Buy Now</a>
                </div>
            </div>
        </div>

        <div class="col-2" style="text-align:center ;border: 1px solid #d4d4d4;border-radius: 5px;margin: 1%;padding: 1%">
            <div class="item clearfix">
                <div class="text_center plan_box">
                    <div class="plan_name btn btn-success btn-green" style="width: 100%;">GadgetSecure</div><br/>
                    <br />
                    <div class="plan_price"><i class="fi flaticon-rupee1"></i> <input type="radio" name="plan" id="p2" onclick="newfunc()" />&nbsp;&nbsp;<span class="text">₹ 999</span></div><br />
                    <ul>
                        <li>Handset Value (MRP) Upto - Rs. 10,000</li><br />
                        <li>Cashless Facility *</li><br />
                        <li>Insurance Validity - 1 Year</li><br />
                        <li>Application Validity - 1 Year</li><br />
                        <li>Accidental Damage Insurance</li><br />
                        <li>Liquid Damage Insurance</li><br />
                        <li>Physical Damage Insurance</li><br />
                        <li>Technical Support</li><br />
                        <li>GadgetControl</li><br />
                    </ul>
                    <a href="/login/auth" id="b2" class="btn btn-success btn-green disabled" style="margin-bottom: 10px;padding-right: 10px;padding-left: 10px;color: black;border: 1px solid #e258277a;border-radius:5px ">Buy Now</a>
                </div>
            </div>
        </div>
        <div class="col-2" style="text-align:center ;border: 1px solid #d4d4d4;border-radius: 5px;margin: 1%;padding: 1%">
            <div class="item clearfix">
                <div class="text_center plan_box">
                    <div class="plan_name btn btn-success btn-green" style="width: 100%;">GadgetSecure</div><br/>
                    <br />
                    <div class="plan_price"><i class="fi flaticon-rupee1"></i><input type="radio" name="plan" id="p3" onclick="newfunc()" />&nbsp;&nbsp;<span class="text">₹ 999</span></div><br />
                    <ul>
                        <li>Handset Value (MRP) Upto - Rs. 10,000</li><br />
                        <li>Cashless Facility *</li><br />
                        <li>Insurance Validity - 1 Year</li><br />
                        <li>Application Validity - 1 Year</li><br />
                        <li>Accidental Damage Insurance</li><br />
                        <li>Liquid Damage Insurance</li><br />
                        <li>Physical Damage Insurance</li><br />
                        <li>Technical Support</li><br />
                        <li>GadgetControl</li><br />
                    </ul>
                    <a href="/login/auth" id="b3" class="btn btn-success btn-green disabled" style="margin-bottom: 10px;padding-right: 10px;padding-left: 10px;color: black;border: 1px solid #e258277a;border-radius:5px ">Buy Now</a>
                </div>
            </div>
        </div>
        <div class="col-2" style="text-align:center ;border: 1px solid #d4d4d4;border-radius: 5px;margin: 1%;padding: 1%">
            <div class="item clearfix">
                <div class="text_center plan_box">
                    <div class="plan_name btn btn-success btn-green" style="width: 100%;">GadgetSecure</div><br/>
                    <br />
                    <div class="plan_price"><i class="fi flaticon-rupee1"></i><input type="radio" name="plan" id="p4" onclick="newfunc()"/>&nbsp;&nbsp;<span class="text">₹ 999</span></div><br />
                    <ul>
                        <li>Handset Value (MRP) Upto - Rs. 10,000</li><br />
                        <li>Cashless Facility *</li><br />
                        <li>Insurance Validity - 1 Year</li><br />
                        <li>Application Validity - 1 Year</li><br />
                        <li>Accidental Damage Insurance</li><br />
                        <li>Liquid Damage Insurance</li><br />
                        <li>Physical Damage Insurance</li><br />
                        <li>Technical Support</li><br />
                        <li>GadgetControl</li><br />
                    </ul>
                    <a href="/login/auth" id="b4" class="btn btn-success btn-green disabled"  style="margin-bottom: 10px;padding-right: 10px;padding-left: 10px;color: black;    border: 1px solid #e258277a;border-radius:5px ">Buy Now</a>
                </div>
            </div>
        </div>
        <div class="col-2" style="text-align:center ;border: 1px solid #d4d4d4;border-radius: 5px;margin: 1%;padding: 1%">
            <div class="item clearfix">
                <div class="text_center plan_box">
                    <div class="plan_name btn btn-success btn-green" style="width: 100%;">GadgetSecure</div><br/>
                    <br />
                    <div class="plan_price"><input type="radio" name="plan" id="p5" onchange="newfunc()"/>&nbsp;&nbsp;<span class="text">₹ 999</span></div><br />
                    <ul>
                        <li>Handset Value (MRP) Upto - Rs. 10,000</li><br />
                        <li>Cashless Facility *</li><br />
                        <li>Insurance Validity - 1 Year</li><br />
                        <li>Application Validity - 1 Year</li><br />
                        <li>Accidental Damage Insurance</li><br />
                        <li>Liquid Damage Insurance</li><br />
                        <li>Physical Damage Insurance</li><br />
                        <li>Technical Support</li><br />
                        <li>GadgetControl</li><br />
                    </ul>

                    <a href="/login/auth" id="b5" class="btn btn-success btn-green disabled" style="margin-bottom: 10px;padding-right: 10px;padding-left: 10px;color: black;border: 1px solid #e258277a;border-radius:5px;">Buy Now</a>
                </div>
            </div>
        </div>
        <g:link controller="home" action="gold" class="btn btn-success btn-green" style="margin-bottom: 10px;padding-right: 10px;padding-left: 10px;color: black;border: 1px solid #e258277a;border-radius:5px;margin-left: 91% ">Back</g:link>
    </div>

</div>
<script>

    function newfunc(){
        if($('#p1').prop('checked')){
            $('#b1').removeClass('disabled');
            $('#b2').addClass('disabled');
            $('#b3').addClass('disabled');
            $('#b4').addClass('disabled');
            $('#b5').addClass('disabled');
        }else if($('#p2').prop('checked')){
            $('#b1').addClass('disabled');
            $('#b2').removeClass('disabled');
            $('#b3').addClass('disabled');
            $('#b4').addClass('disabled');
            $('#b5').addClass('disabled');
        }else if($('#p3').prop('checked')){
            $('#b1').addClass('disabled');
            $('#b2').addClass('disabled');
            $('#b3').removeClass('disabled');
            $('#b4').addClass('disabled');
            $('#b5').addClass('disabled');
        }else if($('#p4').prop('checked')){
            $('#b1').addClass('disabled');
            $('#b2').addClass('disabled');
            $('#b3').addClass('disabled');
            $('#b4').removeClass('disabled');
            $('#b5').addClass('disabled');
        }else if($('#p5').prop('checked')){
            $('#b1').addClass('disabled');
            $('#b2').addClass('disabled');
            $('#b3').addClass('disabled');
            $('#b4').addClass('disabled');
            $('#b5').removeClass('disabled');

        }else{}
    }
</script>
</body>
</html>