<%--
  Created by IntelliJ IDEA.
  User: kamesh
  Date: 5/2/18
  Time: 5:53 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="customLayout"/>

    %{--<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>--}%
    %{--<script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jspdf/0.9.0rc1/jspdf.min.js"></script>--}%
    %{--<script type="text/javascript">--}%
        %{--var doc = new jsPDF();--}%
        %{--var specialElementHandlers = {--}%
            %{--'#editor': function (element, renderer) {--}%
                %{--return true;--}%
            %{--}--}%
        %{--};--}%

        %{--$(document).ready(function() {--}%
            %{--$('#btn').click(function () {--}%
                %{--doc.fromHTML($('#content').html(), 15, 15, {--}%
                    %{--'width': 170,--}%
                    %{--'elementHandlers': specialElementHandlers--}%
                %{--});--}%
                %{--doc.save('sample-content.pdf');--}%
            %{--});--}%
        %{--});--}%
    %{--</script>--}%
</head>

<body>

%{--<div id="content">--}%
    %{--<h1><asset:image src="logo.png" style="width: 20%;"/></h1>--}%
    %{--<h1>Gadget Secure</h1>--}%
    %{--<p>Invoice Number : ${employee}</p>--}%

%{--</div>--}%

%{--<div id="editor"></div>--}%
%{--<button id="btn">Generate PDF</button>--}%

<g:link action="downloadReceipt">To PDF</g:link>

</body>
</html>