<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MapPage.aspx.cs" Inherits="WebScriptingStartup.MapPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   
    <!--<meta name="viewport" content="width=620" />-->

<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>

    <article>
      <p>Find Pet Stores and Vets near your location: <span id="status">checking...</span></p>
        <!-- Found at http://html5demos.com/geo -->
    </article>


<script>
function success(position) {
  var s = document.querySelector('#status');
  
  if (s.className == 'success') {  
    return;
  }
  
  s.innerHTML = "";
  s.className = 'success';
  
  var mapcanvas = document.createElement('div');
  mapcanvas.id = 'mapcanvas';
  mapcanvas.style.height = '300px';
  mapcanvas.style.width = '900px';
    
  document.querySelector('article').appendChild(mapcanvas);
  
  var latlng = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
  var myOptions = {
    zoom: 15,
    center: latlng,
    mapTypeControl: false,
    navigationControlOptions: {style: google.maps.NavigationControlStyle.SMALL},
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  var map = new google.maps.Map(document.getElementById("mapcanvas"), myOptions);
  
  var marker = new google.maps.Marker({
      position: latlng, 
      map: map, 
      title:""
  });
}

function error(msg) {
  var s = document.querySelector('#status');
  s.innerHTML = typeof msg == 'string' ? msg : "failed";
  s.className = 'fail'; 
}

if (navigator.geolocation) {
  navigator.geolocation.getCurrentPosition(success, error);
} else {
  error('not supported');
}

</script>
    
    </form>
</body>
</html>
