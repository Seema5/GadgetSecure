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




<div class="col-6" style="margin-left: 26%;margin-top: 10%; margin-bottom: 20%;">
    <fieldset>
        <legend style="color: #d51a21;"><g:message code="app.claim.index.title" /></legend>

<form action="/claims/getPolicyDetail" method="get">
        <div class="form-group">
            <label for="policyNumber"></label>
            <input type="text" class="form-control" id="policyNumber" name="policyNumber" placeholder="<g:message code="app.claim.index.placeholder" />">
            %{--<small id="emailHelp" class="form-text text-muted">PLEASE ENTER IMEI/MAC OF YOUR PROTECTED GADGET</small>--}%
        </div>

        <input type="submit" class="btn btn-danger" value="<g:message code="app.claim.index.submit" />" />
</form>

    </fieldset>

</div>
</body>
</html>