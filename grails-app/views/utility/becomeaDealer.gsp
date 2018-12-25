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

<div class="new-form-block" style="margin-top: 2%;margin-bottom: 2%">
    <div class="row">
        <div class="col-md-12">

            <form id="becomeaDealer" style="margin-left:5%;margin-right: 5%" action="/Admin/saveBecomeDealer">

                <div class="register-form-block">
                    <h3 class="form-header" style="margin-left: 10px">
                        Become a Dealer
                        <span style="font-weight: 500; color: #d71921"> NOW</span>!<span style="font-weight: 500; color: black;margin-left: 5%"> Dealers Sales Toll Free No.</span>1800&nbsp;121&nbsp;6589
                    </h3>


                    <div class="form-group" style="margin-bottom: 9px;">
                        <div class="col-lg-6" style="float: left">
                            <input type="text" id="name" name="name"
                                   maxlength="30" class="form-control input-line"
                                   placeholder="Contact Person Name" size="50" required>
                        </div>
                        <div class="col-lg-6" style="float: right">
                            <input type="text" id="firmName" name="firmName"
                                   maxlength="30" class="form-control input-line"
                                   placeholder="Firm Name" size="50" required>
                        </div>
                    </div> <br /><br />
                    <div class="form-group" style="margin-bottom: 9px;">
                        <div class="col-lg-6" style="float: left">
                            <input type="text" id="email" name="email"
                                   class="form-control input-line" size="50" placeholder="Enter Your Email ID" required>
                        </div>
                        <div class="col-lg-6" style="float: right">
                            <input type="text" id="website" name="website"
                                   class="form-control input-line" size="50" placeholder="Website If Any">
                        </div>
                    </div><br /><br />
                    <div class="form-group" style="margin-bottom: 9px;">
                        <div class="col-lg-6" style="float: left">
                            <input type="text" id="mobile"
                                   name="mobile" maxlength="10" size="50"
                                   class="form-control input-line" placeholder=" Enter Your Mobile Number" required>
                        </div>
                        <div class="col-lg-6" style="float: right">
                            <input type="text" id="landlineno"
                                   name="landlineno" maxlength="10" size="50"
                                   class="form-control input-line" placeholder="Enter Your Land Line Number">
                        </div>
                    </div> <br /><br />
                    <div class="form-group">
                        <div class="col-lg-6" style="float: left">
                            <input type="text" id="fax"
                                   name="fax" maxlength="10" size="50"
                                   class="form-control input-line" placeholder=" Enter Your Fax">
                        </div>
                        <div class="col-lg-6"  style="float: right;margin-bottom: 9px">
                            <input type="text" id="pin"
                                   name="pin" maxlength="10" size="50"
                                   class="form-control input-line" placeholder=" Enter pincode" required>
                        </div>
                    </div><br /> <br />
                    <div class="form-group"  style="margin-bottom: 2px;">
                        <div class="col-lg-6" style="float: left">
                            <select class="select-box form-control input-line inactiveForm" name="state" id="state" required >
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
                            <input type="text" id="city"
                                   name="city"  size="50"
                                   class="form-control input-line" placeholder=" Enter City Name" required>
                        </div>
                    </div><br /><br />

                    <div class="form-group"  style="margin-bottom: 2px;">
                        <div class="col-lg-6" style="float: left">
                            <select class="select-box form-control input-line inactiveForm" name="target" id="target" required >
                                <option value="">SELECT Target Customer Base</option>
                                <option value="Home Users">Home Users</option>
                                <option value="Educational Institute">Educational Institute</option>
                                <option value="Small Offices">Small Offices</option>
                                <option value="Manufacturing Industries">Manufacturing Industries</option>
                                <option value="Govt. Sector">Govt. Sector</option>
                                <option value="Corporate">Corporate</option>
                            </select>
                        </div>
                        <div class="col-lg-6" style="float: right">
                            <input type="text" id="comment"
                                   name="comment"  size="50"
                                   class="form-control input-line" placeholder="Your Strengths/ Other Comments If Any" required>
                        </div>
                    </div> <br/><br/><br/>

                    %{--<div class="col-lg-12" style="text-align: center;font-weight: bolder;color: black;padding-top: 1%;padding-bottom: 1%">
                        <div style="background-color: #8c8c8c;border-radius: 5px"> What is Your Target Customer Base ? </div>
                    </div><br />

                    <div class="col-lg-12">
                        <span class="col-4"><input type="checkbox" style="margin-left: 8%"/> Home Users</span><span class="col-4"><input type="checkbox" />Education Institute</span><span class="col-4"><input type="checkbox" />Small Offices</span>
                        <span class="col-4"><input type="checkbox" />Manufacturing Industries</span><span class="col-4"><input type="checkbox" />Government Sector</span><span class="col-4"><input type="checkbox" />Corporate</span>
                    </div><br />

                    <div class="col-lg-12">
                        <span class="col-6" style="float: left;text-align: center"> Your strengths / Other  Comments  if any :</span>
                        <span class="col-6" style="float: right;width: 33%;"> <input type="text" style="margin-bottom: 5%;margin-top: -2%;margin-left: -100%;width: 165%;" /> </span>
                    </div><br /><br />--}%

                    <div class="col-lg-12">
                        <input type="submit" style="border-top-left-radius: 0; border-top-right-radius: 0; padding: 12px; background-color:blue"
                                class="btn btn-primary btn-bavel btn-block text-uppercase"
                                id="btnConfirmAge"></input>
                    </div>

                </div>
            </form>
        </div>
    </div>
</div>
<script>
    function saveDealerDetail() {
        var name = $('#name').val();
        var firmName = $('#firmName').val();
        var website = $('#website').val();
        var email = $('#email').val();
        var mobile = $('#mobile').val();
        var fax = $('#fax').val();
        var pin = $('#pin').val();
        var state = $('#state').val();
        var city = $('#city').val();
        var target = $('#target').val();
        var comment = $('#comment').val();

        if(name != "" && firmName != "" && email != "" && mobile != "" && pin != "" && state != "" && city != "" && target != ""){
            console.log('SUBMITTED');
            // $("#jobForm").attr("action", "/Admin/saveBecomeDealer");
            $('#jobForm').submit();
        }
        else{
            alert('All Feilds are Mandatory');
            // console.log('!SUBMITTED');
            return false;

        }


    }
</script>
</body>
</html>