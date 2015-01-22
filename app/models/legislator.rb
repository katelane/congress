class Legislator
  def self.service
    @service ||= LegislatorService.new
  end

  def self.all
    service.legislators.map { |legislator| _build_object(legislator) }
  end

  def self.find(id)
    _build_object(service.legislator(id))
  end

  private

  def self._build_object(data)
    # OpenStruct.new(data)
    data.map { |hash| OpenStruct.new(hash) } 
  end

end
