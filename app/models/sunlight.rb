class Sunlight
  def self.service
    @service ||= SunlightService.new
  end

  def self.all(text)
    service.text(text).map { |sunlight| _build_object(sunlight) }
  end

  # def self.find(bioguide_id)
  #   # _build_object(sunlight_service.sunlight(id))
  #   sunlight_service.sunlight(bioguide_id)
  # end

  private

  def self._build_object(data)
    OpenStruct.new(data)
    # data.map { |hash| OpenStruct.new(hash) }
  end

  def keyword(word)

  end

end
