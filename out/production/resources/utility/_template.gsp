<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
    <title>Invoice</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

</head>
<body>
<div class="col-12">
    <!-- Page Content -->
    <div class="container">
    <p><center><rendering:inlineJpeg bytes="${logo}" /></center></p>

    <hr/>

    <div style="float: right;">
        <p><center><b><u>MEMBERSHIP NUMBER</u></b></center></p>
        <p><center><rendering:inlineJpeg bytes="${barcode}" /></center></p>
    </div>


    <table class="table table-bordered">
        <tr>
            <td style="line-height: 8px;text-transform: uppercase;">
                <p><b><u>ADDRESS</u></b></p>
                <p>${record.address}</p>
                <p>${record.city}</p>
                <p>${record.state}, ${record.pincode}</p>
                <p>${record.mobile}</p>
                <p><b>STATUS : </b>${record.status}</p>
            </td>
        </tr>
    </table>

    <hr/>

    <p>
        <b>Dear ${record.customerName},</b>
    </p>
    <p>
        Congratulations on buying Secure Gadget and welcome to the Secure Gadget
        family! We thank you for choosing to buy Secure Gadget and hope
        you will enjoy the benefits the membership offers.
    </p>

    <p>
        This welcome pack contains the following that explain all aspects of your
        Secure Gadget membership:
    </p>

    <p>
        <b>Benefit Guide:</b> Explains the key benefits of your membership in detail
    </p>
    <p> <b>Terms and Conditions:</b> Details the terms and conditions of your
    membership (including terms of your Equipment all risk insurance
    provided by the insurer)</p>
    <p> <b>Benefit usage instructions:</b> Easy-to-use instructions for benefits that are
    part of your membership.</p>
    <p>Your membership details along with the details of the asset purchased by
    you are mentioned overleaf. Don't hesitate to get in touch with us on the
    contact details mentioned for any assistance regarding your membership.</p>
    <p>Thank you again for becoming a Gadget Secure member!</p>
    Yours sincerely,<br/>
    For Gadget Secure<br/><br/>
    <p><rendering:inlineJpeg bytes="${sign}" style="width:150px;"/></p>
    </div>
    <!-- /.container -->
</div>
</body>
</html>