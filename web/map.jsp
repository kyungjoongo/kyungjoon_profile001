<%--
  Created by IntelliJ IDEA.
  User: kyungjoon-new
  Date: 5/19/2016
  Time: 12:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>geocoder</title>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js">
    </script>
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false">
    </script>
    <script type="text/javascript">



        /*524 양지마을한양2차아파트
        37.373046, 127.116894*/

        $(document).ready(function() {
            var latlng = new google.maps.LatLng(37.373046, 127.116894);
            var myOptions = {
                zoom : 15,
                center : latlng,
                mapTypeId : google.maps.MapTypeId.ROADMAP
            }
            var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
            var marker = new google.maps.Marker({
                position : latlng,
                map : map
            });
        });
    </script>
</head>
<body>
<table border="1">
    <tr>
        <td colspan="2"><div id="map_canvas" style="width: 460px; height: 380px;"></div></td>
    </tr>
    <tr>
        <th width="100">위도</th>
        <td id="lat"></td>
    </tr>
    <tr>
        <th>경도</th>
        <td id="lng"></td>
    </tr>
    <tr>
        <th>주소</th>
        <td id="address"></td>
    </tr>
</table>
</body>
</html>

