<%--
  Created by IntelliJ IDEA.
  User: kamesh
  Date: 10/2/18
  Time: 5:03 PM
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
    button
    {
        width:330px;
    }

    </style>
</head>

<body>

        <asset:image src="extended-warranty.jpg" style="height: 700px; width: 100%;"/>
<div class="new-form-block">
    <div class="row">
        <div class="col-md-12">

            <form id="extendedWarrantyForm">

                <div class="register-form-block">
                    <h3 class="form-header">
                        Get Gadget Secure Products Care
                        <span style="font-weight: 500; color: #d71921"> NOW</span>!
                    </h3>


                    <div class="form-group" style="margin-bottom: 9px;">
                        <div class="col-lg-12">
                            <input type="text" id="firstName" name="firstName"
                                   maxlength="30" class="form-control input-line"
                                   placeholder="Name" size="50">
                        </div>
                    </div>
                    <div class="form-group" style="margin-bottom: 9px;">
                        <div class="col-lg-12">
                            <input type="text" id="email_newuser" name="email_newuser"
                                   class="form-control input-line" size="50" placeholder="Email ID">
                        </div>
                    </div>
                    <div class="form-group" style="margin-b388pxottom: 9px;">
                        <div class="col-lg-12">
                            <input type="text" id="mobileNumber_newuser"
                                   name="mobileNumber_newuser" maxlength="10" size="50"
                                   class="form-control input-line" placeholder="Mobile Number">
                        </div>
                    </div>
                    <div class="form-group"  style="margin-bottom: 2px;">
                        <div class="col-lg-12">
                            <select title="Supported Brands" id="handset_brand" name="company" class="select-box form-control input-line">
                                <option selected>Select Brand</option>
                                <option value="Asus">Asus</option>
                                <option value="Blackberry">Blackberry</option>
                                <option value="Gionee">Gionee</option>
                                <option value="HTC">HTC</option>
                                <option value="Intex">Intex</option>
                                <option value="Karbonn">Karbonn</option>
                                <option value="Lava">Lava</option>
                                <option value="LeEco">LeEco</option>
                                <option value="Lenovo">Lenovo</option>
                                <option value="LG">LG</option>
                                <option value="Mi / Xiomi / Redmi">Mi / Xiomi / Redmi</option>
                                <option value="Micromax">Micromax</option>
                                <option value="Motorola">Motorola</option>
                                <option value="Nokia">Nokia</option>
                                <option value="OnePlus">OnePlus</option>
                                <option value="OPPO">OPPO</option>
                                <option value="Panasonic">Panasonic</option>
                                <option value="Samsung">Samsung</option>
                                <option value="Sony">Sony</option>
                                <option value="VIVO">VIVO</option>
                                <option value="XOLO">XOLO</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group" style="margin-bottom: 9px;">
                        <div class="col-lg-12">
                            <select title="Device Value" id="value_options" name="pricerange" class="select-box form-control input-line">
                                <option  value="0">Device Value</option>
                                <option  value="6000">Upto to Rs.6000</option>
                                <option  value="10000">Rs. 6001 to 10000</option>
                                <option  value="15000">Rs. 10001 to 15000</option>
                                <option  value="20000">Rs. 15001 to 20000</option>
                                <option  value="30000">Rs. 20001 to 30000</option>
                                <option  value="40000">Rs. 30001 to 40000</option>
                                <option  value="50000">Rs. 40001 to 50000</option>
                                <option  value="90000">Rs. 50001 to 90000</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group" id="purchase-website-name"
                         style="margin-bottom: 9px;">
                        <div class="col-lg-12">
                            <select class="select-box form-control input-line inactiveForm" name="websitename" id="website_name"  >
                            <option value="" >Select Website </option>
                            <option value="amazon">Amazon</option>
                            <option value="flipkart">Flipkart</option>
                            <option value="snapdeal">Snapdeal</option>
                            <option value="paytm">Paytm</option>
                            <option value="ebay">Ebay</option>
                            <option value="indiatimes">Indiatimes Shopping</option>
                            <option value="other">Other E-Commerce Websites</option>
                        </select>
                        </div>
                    </div>
                    <div class="form-group" id="purchase-date-wrap" style=" margin-bottom: 9px;">
                        <label for="idate" style="float: left;margin-left: 2.7%; font-weight: bold;">Invoice Date</label>
                        <input class="select-box form-control input-line inactiveForm" name="dateofpurchase" type="date" style="width: 94%;margin-left: 2.7%;" id="idate"/>
                    </div>
                    <div class="form-group" style="margin-bottom: 5px;">
                        <div class="col-md-12">
                            <small style="padding: 10px;display: block; line-height: 15px; background: #f5f5f5; margin-top: 2px; border: 1px solid #e8e8e8">
                                * Please note that handset model 'SAMSUNG Galaxy E7' is  NOT supported
                            </small>
                        </div>
                    </div>
                    <div class="form-group" style="margin-bottom: 9px;">
                        <div style="color: #333; font-size: 14px;" class="col-md-12">
                            <div class="clearfix"></div>
                            <input type="checkbox" id="confirmAge">&nbsp; I
                        confirm that I am above 18 years <br>
                        </div>
                    </div>
                    <div class="">
                        <button type="button" style="border-top-left-radius: 0; border-top-right-radius: 0; padding: 12px; background-color:blue "
                                class="btn btn-primary btn-bavel btn-block text-uppercase"
                                id="btnConfirmAge" onclick="saveData()">Show Protection Plan</button>
                    </div>

                </div>


        </form>




        </div>

    </div>
</div>

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