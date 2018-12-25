<%--
  Created by IntelliJ IDEA.
  User: shiva
  Date: 1/3/18
  Time: 3:06 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="customLayout"/>
</head>

<body>
<div>
<h4><b style="margin-left:35%">
    Career Opportunities: Submit the Detail</b></h4>
<form id="jobForm" enctype="multipart/form-data" method="post">
    <table class="table" align="center" style="width: 40%;">
        <tr>
            <td>
                Full Name*
            </td>
            <td>
                <input type="text" name="name" size="35%" class="form-control" id="name" placeholder="Enter Your Full Name">
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
                Retype Email Address*
            </td>
            <td>
                <input type="email" name="reemail" size="35%" class="form-control" placeholder="Email Address">
            </td>
        </tr>
        <tr>
            <td>
                Mobile No.*
            </td>
            <td>
                <input type="tel" name="mobile" size="35%" id="mobile" class="form-control" placeholder="Enter Your Mobile Number">
            </td>
        </tr>
        <tr>
            <td>
                Alternate Mobile No.*
            </td>
            <td>
                <input type="tel" name="altmobile" size="35%" id="altmobile"  class="form-control" placeholder="Enter Alternate Mobile Number">
            </td>
        </tr>
        <tr>
            <td>
                Aadhar Number*
            </td>
            <td>
                <input type="tel" name="aadhar" size="35%" id="aadhar" class="form-control" placeholder="Aadhar Number">
            </td>
        </tr>
        <tr>
            <td>
                Pincode*
            </td>
            <td>
                <input type="tel" name="pin" size="35%" id="pin" class="form-control" placeholder="Pincode">
            </td>
        </tr>
        <tr>
            <td>
                Please Attach Your Resume(.doc and .docx allowed)*
            </td>
            <td>
                <input type="file" class="form-control" name="file" />
            </td>
        </tr>
        <tr>
            <td>
                State of Residence
            </td>
            <td>
                <select aria-required="true" class="form-control" aria-label="State of Residence" id="state" name="state">

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
                Select Job Title
            </td>
            <td>
                <select aria-required="true" aria-label="State of Residence" class="form-control" id="jobId" name="jobId">
                    <option value="">SELECT Job Title</option>
                </select>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" class="btn btn-warning btn-block"  onclick="submitPersonalDetail()"  style="background-color:#721c24;color:white;border-color: #721c24;border-radius: 5px;margin-left: 40%;width: 17%">
            </td>
        </tr>
    </table>
</form>
<h3 id="msg" style="text-align: center;font-weight: bolder;color: green"></h3>
</div>
<asset:javascript src="jquery.min.js"/>
<script>

    var jobs = jQuery.parseJSON(jQuery.ajax({
        url:  "/Admin/getCurrentOpening",
        dataType: "json",
        async: false
    }).responseText);

    jQuery.each(jobs, function(i, item) {
        $('#jobId').append('<option value="'+jobs[i].id+'">'+jobs[i].title+'</option>');
    })

   // var states = jQuery.parseJSON(jQuery.ajax({
   //      url:  "/Admin/getStates",
   //      dataType: "json",
   //      async: false
   //  }).responseText);
   //
   //  jQuery.each(states, function(i, item) {
   //      $('#state').append('<option value="'+states[i].state+'">'+states[i].state+'</option>');
   //  })

    function submitPersonalDetail(){


        var name=$('#name').val();
        var email=$('#email').val();
        var mobile=$('#mobile').val();
        var aadhar = $('#aadhar').val();
        var pin = $('#pin').val();
        var state = $('#state').val();
        var jobId = $('#jobId').val();
        // var status = $.parseJSON($.ajax({
        //     url:  "/Admin/saveJobApplication?name="+name+"&email="+email+"&mobile="+mobile+"&altmobile="+$('#altmobile').val()+"&aadhar="+aadhar+"&pin="+$('#pin').val()+"&state="+$('#state').val()+"&jobid="+$('#jobId').val()+"",
        //     dataType: "json",
        //     async: false
        // }).responseText);

        if(name !== "" && email !== "" && mobile !== "" && aadhar !== "" && pin !== "" && state !== "" && jobId !== ""){
            console.log('SUBMITTED');
            $("#jobForm").attr("action", "/Admin/saveJobApplication");
            $('#jobForm').submit();
        }
        else{
            alert('All Feilds are Mandatory');
            console.log('!SUBMITTED');
            return false;

        }

        // debugger
        // if(status[0] === 'success'){
        //     /*$('#newForm')[0].reset();*/
        //     alert(status[0])
        //     $('#msg').html('successfully submitted!')
        // }else{
        //
        // }
    }


</script>
</body>
</html>