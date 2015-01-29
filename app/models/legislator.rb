class Legislator
  def self.service
    @service ||= LegislatorService.new
  end

  def self.all(zip)
    service.zip(zip).map { |legislator| _build_object(legislator) }
  end

  private

  def self._build_object(data)
    OpenStruct.new(data)
  end

end
