class Apart

  def self.service
    @service ||= ApartService.new
  end

  # def self.all
  #   service.schools.map { |school| _build_object(school) }
  # end

  # def self.find(id)
  #   _build_object(service.school(id))
  # end

  # def self.create(params)
  #   _build_object(service.create_school(params))
  # end

  # def self._build_object(data)
  #   OpenStruct.new(data)
  # end

end
