class ApartService
  attr_reader :connection

  def initialize
    @connection = Faraday.new(url: "http://search.3taps.com/?auth_token=8cc7402e899fbc9d66f3b797758aaa9b&rpp=10&source=CRAIG&location.metro=USA-PHI&category=RHFR&location.county=USA-PA-PHI&location.city=USA-PHI-PHI")
  end

  def apart_coords
    @marker_data = (1..2).flat_map do |page_number|
      json_data = parse(connection.get '', { page: page_number })

      json_data["postings"].map do |location|
        [location["location"]["lat"].to_f, location["location"]["long"].to_f, location["external_url"], location["heading"]]
      end
    end
  end

  private

  def parse(response)
    JSON.parse(response.body)
  end
end
