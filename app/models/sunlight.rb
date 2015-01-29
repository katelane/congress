class Sunlight
  def self.service
    @service ||= SunlightService.new
  end

  def self.all(text)
    service.text(text).map { |sunlight| _build_object(sunlight) }
  end

  private

  def self._build_object(data)
    OpenStruct.new(data)
  end
  
end
