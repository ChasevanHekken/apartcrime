class Apart
  def self.service
    @service ||= ApartService.new
  end

  def self.marker_data
    service.apart_coords
  end
end


