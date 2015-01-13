<script type="text/javascript"
  src="https://maps.googleapis.com/maps/api/js?key=#{ENV['GOOGLE_MAP_API_KEY']}">
</script>

<script type="text/javascript">
  function initialize() {
    var mapOptions = {
      center: { lat: 39.9500, lng: -75.1667},
      zoom: 12
    };
    var map = new google.maps.Map(document.getElementById('map-canvas'),
        mapOptions);
  }
  google.maps.event.addDomListener(window, 'load', initialize);
</script>