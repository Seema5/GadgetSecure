<%--
  Created by IntelliJ IDEA.
  User: shiva
  Date: 28/2/18
  Time: 3:58 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="customLayout"/>
</head>

<body>

<div class="new-form-block">
    <div class="row">
        <div class="col-md-12">

            <form id="extendedWarrantyForm" style="margin-left:5%;margin-right: 5%">

                <div class="register-form-block">
                    <h3 class="form-header" style="margin-left: 10px">
                        Become a Dealer
                        <span style="font-weight: 500; color: #d71921"> NOW</span>!
                    </h3>


                    <div class="form-group" style="margin-bottom: 9px;">
                        <div class="col-lg-6" style="float: left">
                            <input type="text" id="firstName" name="firstName"
                                   maxlength="30" class="form-control input-line"
                                   placeholder="Enter Your First Name" size="50">
                        </div>
                        <div class="col-lg-6" style="float: right">
                            <input type="text" id="lastName" name="lastName"
                                   maxlength="30" class="form-control input-line"
                                   placeholder="Enter Your Last Name" size="50">
                        </div>
                    </div> <br /><br />
                    <div class="form-group" style="margin-bottom: 9px;">
                        <div class="col-lg-6" style="float: left">
                            <input type="text" id="email_newuser" name="email_newuser"
                                   class="form-control input-line" size="50" placeholder="Enter Your Email ID">
                        </div>
                        <div class="col-lg-6" style="float: right">
                            <input type="text" id="firmName" name="firmName"
                                   class="form-control input-line" size="50" placeholder="Enter The Firm Name">
                        </div>
                    </div><br /><br />
                    <div class="form-group" style="margin-bottom: 9px;">
                        <div class="col-lg-6" style="float: left">
                            <input type="text" id="mobileNumber_newuser"
                                   name="mobileNumber_newuser" maxlength="10" size="50"
                                   class="form-control input-line" placeholder=" Enter Your Mobile Number">
                        </div>
                        <div class="col-lg-6" style="float: right">
                            <input type="text" id="aletrnate_mobileNumber"
                                   name="aletrnate_mobileNumber" maxlength="10" size="50"
                                   class="form-control input-line" placeholder="Enter Your Alternate Mobile Number">
                        </div>
                    </div> <br /><br />
                    <div class="form-group"  style="margin-bottom: 2px;">
                        <div class="col-lg-6" style="float: left">
                            <select class="select-box form-control input-line inactiveForm" name="websitename" id="website_name"  >
                                <option value="">SELECT STATE</option>
                                <option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
                                <option value="Andhra Pradesh">Andhra Pradesh</option>
                                <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                                <option value="Assam">Assam</option>
                                <option value="Bihar">Bihar</option>
                                <option value="Chandigarh">Chandigarh</option>
                                <option value="Chhattisgarh">Chhattisgarh</option>
                                <option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
                                <option value="Daman and Diu">Daman and Diu</option>
                                <option value="Delhi">Delhi</option>
                                <option value="Goa">Goa</option>
                                <option value="Gujarat">Gujarat</option>
                                <option value="Haryana">Haryana</option>
                                <option value="Himachal Pradesh">Himachal Pradesh</option>
                                <option value="Jammu and Kashmir">Jammu and Kashmir</option>
                                <option value="Jharkhand">Jharkhand</option>
                                <option value="Karnataka">Karnataka</option>
                                <option value="Kerala">Kerala</option>
                                <option value="Lakshadweep">Lakshadweep</option>
                                <option value="Madhya Pradesh">Madhya Pradesh</option>
                                <option value="Maharashtra">Maharashtra</option>
                                <option value="Manipur">Manipur</option>
                                <option value="Meghalaya">Meghalaya</option>
                                <option value="Mizoram">Mizoram</option>
                                <option value="Nagaland">Nagaland</option>
                                <option value="Orissa">Orissa</option>
                                <option value="Pondicherry">Pondicherry</option>
                                <option value="Punjab">Punjab</option>
                                <option value="Rajasthan">Rajasthan</option>
                                <option value="Sikkim">Sikkim</option>
                                <option value="Tamil Nadu">Tamil Nadu</option>
                                <option value="Tripura">Tripura</option>
                                <option value="Uttaranchal">Uttaranchal</option>
                                <option value="Uttar Pradesh">Uttar Pradesh</option>
                                <option value="West Bengal">West Bengal</option>
                            </select>
                        </div>
                        <div class="col-lg-6" style="float: right">
                            <select class="select-box form-control input-line inactiveForm" name="websitename" id="website_name"  >
                                <option value="">SELECT CITY</option>
                                <option value="jabalpur">Jabalpur</option>
                                <option value="ahamdabad">Ahamdabad</option>
                                <option value="nagpur">Nagpur</option>
                            </select>
                        </div>
                    </div><br /><br />

                    <div class="form-group" style="margin-bottom: 9px;">
                        <div class="col-lg-12">
                            <input type="text" id="pincode"
                                   name="pincode" maxlength="10" size="50"
                                   class="form-control input-line" placeholder=" Enter pincode">
                        </div>
                    </div>


                    <div class="col-lg-12">
                        <button type="button" style="border-top-left-radius: 0; border-top-right-radius: 0; padding: 12px; background-color:blue"
                                class="btn btn-primary btn-bavel btn-block text-uppercase"
                                id="btnConfirmAge" onclick="saveData()">Submit</button>
                    </div>

                </div>


            </form>




        </div>

    </div>
</div>

</body>
</html>