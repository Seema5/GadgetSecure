<%--
  Created by IntelliJ IDEA.
  User: kamesh
  Date: 31/1/18
  Time: 7:25 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="customLayout"/>
</head>

<body>
<div class="row">

<div class="col-4" style="margin-left: 2%;margin-top: 3%">
    <asset:image src="policypageimg.jpg"  style="margin-left: 6%"/>
</div>


<div class="col-6" style="margin-top: 100px; margin-bottom: 20%;">

    <fieldset>
        <legend style="color: #d51a21;">Access Your Policy</legend>

<form action="/claims/getPolicyDetail" method="get">
        <div class="form-group" style="width:156%;">
            %{--<select id="homepage_manage_select" class="show-hide first-focusable" data-selected="manage_auto" aria-label="Please select an insurance product" style="width: 38%;background-color: #ff000000;border: 2px solid #dadada;">--}%
                %{--<option value="homepage_manage_ecams_form" class="manage_mobile/tablet">Mobile/Tablet</option>--}%
                %{--<option value="homepage_manage_ecams_form" class="manage_laptop">Laptop</option>--}%
                %{--<option value="homepage_manage_ecams_form" class="manage_desktop">Desktop</option>--}%
                %{--<option value="homepage_manage_ecams_form" class="manage_printer">Printer</option>--}%

            %{--</select> <br/>--}%

            <label for="policyNumber"></label>
            <input type="text" class="form-control" id="policyNumber" name="policyNumber" style="width: 38%;border: 2px solid #dadada;" placeholder="Product Authentication Policy Insurance Number" autocomplete="off">
            %{--<small id="emailHelp" class="form-text text-muted">PLEASE ENTER IMEI/MAC OF YOUR PROTECTED GADGET</small>--}%
        </div>

        <input type="submit" class="btn btn-danger" value="<g:message code="app.claim.index.submit" />" />
</form>

    </fieldset>

</div>
</div>

</body>
</html>