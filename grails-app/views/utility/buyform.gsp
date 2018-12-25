<%--
  Created by IntelliJ IDEA.
  User: manmeet
  Date: 16/3/18
  Time: 11:47 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="customLayout"/>
</head>

<body>
<div>
    <h4><b style="margin-left:45%">
        Submit  Details</b></h4>
    <form>
        <table class="table" align="center" style="width: 40%;">
            <tr>
                <td>
                    Full Name*
                </td>
                <td>
                    <input type="text" name="name" class="form-control" size="35%" id="name" placeholder="Enter Your Full Name">
                </td>
            </tr>
            <tr>
                <td>
                    Email*
                </td>
                <td>
                    <input type="email" name="email" size="35%" class="form-control" id="email" placeholder="Email Address">
                </td>
            </tr>

            <tr>
                <td>
                    Mobile No.*
                </td>
                <td>
                    <input type="tel" name="mobile" size="35%" class="form-control" id="mobile" placeholder="Enter Your Mobile Number">
                </td>
            </tr>

            <tr>
                <td>
                    Address*
                </td>
                <td>
                    <input type="tel" name="address" size="35%" class="form-control" id="address" placeholder="Address">
                </td>
            </tr>
            <tr>
                <td>
                    Pincode*
                </td>
                <td>
                    <input type="tel" name="pin" size="35%" class="form-control" id="pin" placeholder="Pincode">
                </td>
            </tr>

            <tr>
                <td>
                    State of Residence
                </td>
                <td>
                    <select aria-required="true" aria-label="State of Residence" class="form-control" id="state" name="state" >

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
                </td>
            </tr>
            <tr>
                <td>
                    Plan Value*
                </td>
                <td>
                    <input type="tel" name="plan" size="35%" class="form-control" id="plan" value="499" disabled="true">
                </td>
            </tr>
            <tr>
                <td>
                   Device Type*
                </td>
                <td>
                    <select aria-required="true" aria-label="device type" class="form-control" id="device" name="device" >

                        <option value="">SELECT DEVICE</option>
                        <option value="Mobile">Mobile</option>
                        <option value="Laptop">Laptop</option>
                        <option value="Printer">Printer</option>
                        <option value="Desktop">Desktop</option>
                    </select>
                </td>
            </tr>
            <tr>

                <td colspan="2">
                   <p align="center"> Continue to &nbsp;&nbsp; <button class="btn btn-success btn-green"  style="margin-bottom: 10px;padding-right: 10px;padding-left: 10px;color: black;    border: 1px solid #e258277a;border-radius:5px ">Checkout</button></p>
                </td>
            </tr>
        </table>
    </form>
</div>

</body>
</html>