class ApartService
  attr_reader :connection

  def initialize
    @connection = Faraday.new(url: "http://search.3taps.com/?auth_token=8cc7402e899fbc9d66f3b797758aaa9b&rpp=100&source=CRAIG&location.metro=USA-PHI&category=RHFR&location.county=USA-PA-PHI&location.city=USA-PHI-PHI")
    apart_coords
  end

  def apart_coords
    @marker_data = parse(connection.get)

  end

  private

  def parse(response)
    JSON.parse(response.body)
  end

end
