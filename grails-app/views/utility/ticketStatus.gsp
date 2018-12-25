<%--
  Created by IntelliJ IDEA.
  User: shiva
  Date: 8/3/18
  Time: 4:37 PM
--%>


<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="customLayout"/>
</head>

<body>




<div class="col-6" style="margin-left: 26%;margin-top: 10%; margin-bottom: 20%;">
    <fieldset>
        <legend style="color: #d51a21;">Ticket Status </legend>

        <form action="#" method="get">
            <div class="form-group">
                <label for="policyNumber"></label>
                <input type="text" class="form-control" id="policyNumber" name="policyNumber" placeholder="Enter Ticket Number" style="margin-top: -3%">
                %{--<small id="emailHelp" class="form-text text-muted">PLEASE ENTER IMEI/MAC OF YOUR PROTECTED GADGET</small>--}%
            </div>

            <input type="submit" class="btn btn-danger" value="<g:message code="app.claim.index.submit" />" />
        </form>

    </fieldset>

</div>
</body>
</html>