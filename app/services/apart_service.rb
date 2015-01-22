class ApartService
  attr_reader :connection

  def initialize
    @connection = Faraday.new(url: "http://search.3taps.com/?auth_token=8cc7402e899fbc9d66f3b797758aaa9b&rpp=100&source=CRAIG&location.metro=USA-PHI&category=RHFR&location.county=USA-PA-PHI&location.city=USA-PHI-PHI")
  end

  def apart_coords
    parse(connection.get)
  end

  # def schools
  #   parse(connection.get("schools"))
  # end

  # def school(id)
  #   parse(connection.get("schools/#{id}"))
  # end

  # def create_school(params)
  #   parse(connection.post("schools", params))
  # end

  private

  def parse(response)
    JSON.parse(response.body)
  end

end
