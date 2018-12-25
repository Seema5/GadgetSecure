<%--
  Created by IntelliJ IDEA.
  User: shiva
  Date: 14/3/18
  Time: 3:17 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="customLayout"/>
    <style>
    .new-form-block {
        position: absolute;
        top: 95px;
        right: 388px;
        /*width: 370px;*/
        background-color: #f5f5f5;
        border-radius: 4px;
        min-height: 350px;
        z-index: 1;
        border: 0.5px solid #909090;
        text-align:center;
        font-weight: 300;
        font-size: 18px;
        margin-bottom: 10px;
        padding: 15px;
        background-color: #00000038;
        border-top-left-radius: 4px;
        border-top-right-radius: 4px;
    }
    select {
        width:330px;

    }

    .hovereffect {
        width: 100%;
        height: 100%;
        float: left;
        overflow: hidden;
        position: relative;
        text-align: left;
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

<asset:image src="p2.png" style="height: 480px; width: 100%;"/>

<section class="section">
    <div class="container" style="margin-left: 20%">

        %{-- <div class="row">
             <div class="col-sm-12 text-center">
                 <h2 class="title zoomIn animated wow" data-wow-delay=".1s" style="text-shadow: 1px 1px 6px #000000;"><g:message code="app.main.index.services" /></h2>

             </div>
         </div>--}%

        <div class="row" style="width: 60%">
            <div class="col-6">
                <div class="hovereffect">
                    <asset:image class="img-responsive" src="a1.jpg" style="height: 100%;width: 100%"/>
                    <div class="overlay" style="padding-top: 5%">
                        <h2>What We <span style="color: red;font-weight: bolder">Cover</span></h2>
                        <div class="replaced-div-l" style="color: white">
                            <li>All Defects covered under Manufacturer Warranty - both cost of part & labour</li>
                            <li>Defects in Motherboard, Display Screen. Camera, flash, Speaker, Mic, Charging port, Call Function, Bluetooth fucntion, WiFi, Buttons</li>
                            <li>Scenarios: Unable to call, Network not getting connected, Booting issues, Software issues</li>

                        </div>

                    </div>
                </div>
            </div>

            <div class="col-6">
                <div class="hovereffect">
                    <asset:image class="img-responsive" src="a2.jpg" style="height: 100%;width: 100%"/>
                    <div class="overlay" style="padding-top: 5%;">
                        <h2>What We <span style="color: red;font-weight: bolder">Don`t</span> Cover</h2>
                        <div class="replaced-div-r" style="color: #ffffff;">
                            <li>Wear & Tear</li>
                            <li>Natural Calamity like earthquake, cyclone and riots</li>
                            <li>Cosmetic Damages like dents & scratches</li>
                            <li>Battery & Accessories </li>
                            <li>Negligence</li>
                            <li>Any defect not covered by manufacturer</li>
                            <li>Data corruption due to third party apps</li>
                            <li>Cosmetics damages like Dents and scratches
                            </li>
                            <li>Any defect not covered by manufacturer
                            </li>
                            <li>Data Corruption due to third party apps</li>

                        </div>

                    </div>
                </div>
            </div>

        </div>

    </div>
    <!--end row -->

</div>
</section>
<section>
    <div class="container">
        <div class="row product-wrap">
            <h4 style="background:rgb(78,73,96); color:#E3E3E3; padding:20px; font-weight:500;margin:0;width: 100%;text-align: center;border-radius: 10px 10px 0px 0px">
                COMPETITOR ANALYSIS
            </h4>
            <div class="col-md-4" style="padding:0;">
                <h4 style="background:#B7B7B7; color:#333333; padding:10px; font-weight:500; border-bottom:0px solid #FE0000; margin:0;border-right: 1px solid #fff;text-align: center">
                    Benefits
                </h4>
            </div>

            <div class="col-md-4" style="padding:0;">
                <h4 style="background:#B7B7B7; color:#333333; padding:10px; font-weight:500; border-bottom:0px solid #FE0000; margin:0;border-right: 1px solid #fff;text-align: center">
                    GadgetSecure
                </h4>
            </div>

            <div class="col-md-4" style="padding:0;">
                <h4 style="background:#B7B7B7; color:#333333; padding:10px; font-weight:500; border-bottom:0px solid #B7B7B7; margin:0;text-align: center">
                    OTHERS
                </h4>
            </div>

        </div>

        <div class="row product-wrap">
            <div class="col-md-4" style="background:#4E4960; color:#fff;text-align: center;font-weight: bolder;border-radius: 0px 0px 0px 10px">
                <ul>
                    <li>Industry Experience </li>
                    <li>Customer Connect Points</li>
                    <li>Instant Claim Approval</li>
                    <li>Real-time claim status tracker</li>
                    <li>Time taken to Service & Deliver</li>
                    <li>Service Team</li>
                    <li>Certified Service Engineers</li>
                    <li>Value added services</li>
                    <li>No. of States present in</li>
                    <li>Cumulative Market Share</li>
                    <li>Activation Window</li>
                    <li>Documents Required</li>
                    <li>Transferability to a Different Owner <br /><br /></li>
                </ul>
            </div>

            <div class="col-md-4" style=" background:#FDF9F8; border-right: 1px solid #b7b7b7;">
                <ul >
                    <li><i class="far fa-thumbs-up" style="color: green"></i>&nbsp;&nbsp;8 years</li>
                    <li><i class="far fa-thumbs-up" style="color: green"></i>&nbsp;&nbsp;300 connect points  across India</li>
                    <li><i class="far fa-thumbs-up" style="color: green"></i>&nbsp;&nbsp;Yes</li>
                    <li><i class="far fa-thumbs-up" style="color: green"></i>&nbsp;&nbsp;Yes</li>
                    <li><i class="far fa-thumbs-up" style="color: green"></i>&nbsp;&nbsp;21 working days *</li>
                    <li><i class="far fa-thumbs-up" style="color: green"></i>&nbsp;&nbsp;Company owned</li>
                    <li><i class="far fa-thumbs-up" style="color: green"></i>&nbsp;&nbsp;Yes</li>
                    <li><i class="far fa-thumbs-up" style="color: green"></i>&nbsp;&nbsp;Yes</li>
                    <li><i class="far fa-thumbs-up" style="color: green"></i>&nbsp;&nbsp;All 29 States</li>
                    <li><i class="far fa-thumbs-up" style="color: green"></i>&nbsp;&nbsp;More than 80%</li>
                    <li><i class="far fa-thumbs-up" style="color: green"></i>&nbsp;&nbsp;6 months from invoice date</li>
                    <li><i class="far fa-thumbs-up" style="color: green"></i>&nbsp;&nbsp;Only handset invoice & ID proof</li>
                    <li><i class="far fa-thumbs-up" style="color: green"></i>&nbsp;&nbsp;Yes, within 9 months from date of purchase</li>
                </ul>
            </div>

            <div class="col-md-4" style="background:#FDF9F8;border-radius: 0px 0px 10px 0px">
                <ul>
                    <li><i class="far fa-thumbs-down" style="color: red"></i>&nbsp;&nbsp;Less than 2 years</li>
                    <li><i class="far fa-thumbs-down" style="color: red"></i>&nbsp;&nbsp;None</li>
                    <li><i class="far fa-thumbs-down" style="color: red"></i>&nbsp;&nbsp;No</li>
                    <li><i class="far fa-thumbs-down" style="color: red"></i>&nbsp;&nbsp;No</li>
                    <li><i class="far fa-thumbs-down" style="color: red"></i>&nbsp;&nbsp;50-60 working days</li>
                    <li><i class="far fa-thumbs-down" style="color: red"></i>&nbsp;&nbsp;Outsourced</li>
                    <li><i class="far fa-thumbs-down" style="color: red"></i>&nbsp;&nbsp;No</li>
                    <li><i class="far fa-thumbs-down" style="color: red"></i>&nbsp;&nbsp;No</li>
                    <li><i class="far fa-thumbs-down" style="color: red"></i>&nbsp;&nbsp;Less than 10 States</li>
                    <li><i class="far fa-thumbs-down" style="color: red"></i>&nbsp;&nbsp;Less than 20%</li>
                    <li><i class="far fa-thumbs-down" style="color: red"></i>&nbsp;&nbsp;Max 3 months from invoice date</li>
                    <li><i class="far fa-thumbs-down" style="color: red"></i>&nbsp;&nbsp;Handset invoice, ID proof, Claim Form</li>
                    <li><i class="far fa-thumbs-down" style="color: red"></i>&nbsp;&nbsp;Not permitted</li>
                </ul>
            </div>

        </div>
    </div>

</section><br /><br /><br />
<script>
    function saveData(){

        debugger;
        var form = $('#extendedWarrantyForm').serialize();
        $.ajax({
            type: "GET",
            url: '/Gadget/saveExtendedWarranty?'+form,
            success: function (res) {
                console.log(res);
                if(res == 'Please visit your nearest retailer...'){
                    $('#btnConfirmAge').html(res);
                    $('#btnConfirmAge').attr('disabled', 'true');
                    $('#btnConfirmAge').css('color', 'green');
                }
                else{
                    $('#btnConfirmAge').html(res);
                    $('#btnConfirmAge').attr('disabled', 'true');
                    $('#btnConfirmAge').css('color', 'red');
                }
            }
        });

    }
</script>

</body>
</html>