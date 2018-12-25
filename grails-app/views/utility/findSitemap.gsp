<%--
  Created by IntelliJ IDEA.
  User: shiva
  Date: 6/3/18
  Time: 10:27 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="customLayout"/>
    <style>
      #map {
        width: 100%;
        height: 400px;
        background-color: grey;
      }
    </style>
</head>
  </head>
  <body>
    <h3 style="text-align: center">Gadget Secure jabalpur</h3>


 <div id="map" style="width:80%;height:400px;background:yellow;margin-left: 10%;margin-right: 10%;margin-bottom: 5%"></div>

<script>
function myMap() {
    var myLatLng = new google.maps.LatLng(23.181467, 79.986407);
var mapOptions = {
    center:myLatLng,
    zoom: 5,
    mapTypeId: google.maps.MapTypeId.HYBRID
}
var map = new google.maps.Map(document.getElementById("map"), mapOptions);

        var contentString = '<div id="content">'+
            '<div id="siteNotice">'+
            '</div><asset:image src="logo.png" style="width: 10%;height: 30px" /> '+
            '<h5 id="firstHeading" class="firstHeading" style="color:red;display:inline;margin-left:5%">Gadget Secure Jabalpur</h5>'+
            '<div id="bodyContent" style="display:inline">'+
            '<p style="margin-left: 16%;margin-top: -1%;"><i class="fas fa-address-book"></i>&nbsp;&nbsp;<b>Gadget Secure</b>, Near Bhawartal Garden <b>Jabalpur</b>, 482001 ' +
            '<br /><br /><i class="fab fa-chrome"></i>&nbsp;&nbsp;www.gadgetsecure.com <br /><br />'+
            '<i class="fas fa-mobile-alt"></i>&nbsp;&nbsp;0761-123456/987654321<br /><br /> <i class="far fa-clock"></i>&nbsp;&nbsp;Opening Time- Mon - Sat (10:30am to 8:00pm)<br/> <span style="margin-left:19%">Sunday-Closed</span> <br/><span style="font-weight: bolder;color: #006dba">Rating : 8/10 <i class="fas fa-star" style="color: #f5bf02"></i><i class="fas fa-star" style="color: #f5bf02"></i><i class="fas fa-star" style="color: #f5bf02"></i><i class="fas fa-star" style="color: #f5bf02"></i><i class="far fa-star"></i></span></p>'+
            '</div>'+
            '</div>';

        var infowindow = new google.maps.InfoWindow({
          content: contentString
        });


  var marker = new google.maps.Marker({
    position: myLatLng,
    map: map,
    title: 'Gadget Secure, Near Bhawartal Garden, Jabalpur(M.P)-482001'
  });

          marker.addListener('click', function() {
          infowindow.open(map, marker);
        });

}
</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAyi5FbFIYB3VV2VC6AC6UVjnETGX9EPgc&callback=myMap"></script>

</body>
</html>