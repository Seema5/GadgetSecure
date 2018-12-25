<%--
  Created by IntelliJ IDEA.
  User: shiva
  Date: 1/3/18
  Time: 12:08 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="customLayout"/>
    <asset:stylesheet src="jquery.dataTables_themeroller.css" />
    <asset:stylesheet src="jquery-ui.css" />
    <style>
    #example_info{
        display:none;
    }
    #example_length{
        margin-bottom: 2%;
    }
</style>
</head>

<body>
<asset:image src="j1.jpg" style="height: 400px; width: 100%;margin-bottom: 4%;"/>
%{--<div style="background-color:#6c757d;border-radius:30px;margin:3%">--}%
    %{--<form action="#" style="padding:30px" align="center" >--}%
        %{--<input type="text" name="jobkeyword" placeholder="Search by Job Keywords" style="width:40%">&nbsp;&nbsp;&nbsp;--}%
        %{--<input type="text" name="joblocation"placeholder="Search by Job Location" style="width:40%">&nbsp;&nbsp;&nbsp;--}%
        %{--<input type="button" value="Search" name="submit"  style="background-color:#721c24;width:8%;color: white;font-weight: bold;border-color: #721c24;border-radius: 5px">--}%
    %{--</form>--}%
%{--</div>--}%
<table id="example" class="display" cellspacing="0" width="70%" style="margin-bottom: 6%">
    <thead style="background-color: #cecece">
    <tr>
        <th>Title</th>
        <th>Location</th>
        <th>Experience</th>
        %{--<th>Job Description</th>--}%
        <th>Date</th>
        <th>Apply</th>
    </tr>
    </thead>



    <tbody id="job-list">



    </tbody>
</table>
<asset:javascript src="jquery.js" />
<asset:javascript src="jquery.dataTables.js" />
<script>
    $.noConflict();
    jQuery( document ).ready(function( $ ) {
        $('#example').DataTable();
    });
    // Code that uses other library's $ can follow here.

    var jobs = jQuery.parseJSON(jQuery.ajax({
        url:  "/Admin/getCurrentOpening",
        dataType: "json",
        async: false
    }).responseText);

    jQuery.each(jobs, function(i, item) {
        jQuery('#job-list').append('<tr><td>'+jobs[i].title+'</td><td>'+jobs[i].location+'</td><td>'+jobs[i].experiance+'</td><td>'+jobs[i].date+'</td><td><g:link controller="utility" action="submitDetail" class="btn btn-success btn-green">Apply</g:link></td></tr>');
    })

</script>
</body>
</html>