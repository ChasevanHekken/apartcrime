function initialize() {
  console.log("starting map");
  var mapOptions = {
    center: { lat: 39.9500, lng: -75.1667},
    zoom: 12
  };
  var map = new google.maps.Map(document.getElementById('map-canvas'),
      mapOptions);
}
google.maps.event.addDomListener(window, 'load', initialize);

