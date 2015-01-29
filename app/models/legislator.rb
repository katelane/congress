class Legislator
  def self.service
    @service ||= LegislatorService.new
  end

  # def self.all
  #   service.legislators.map { |legislator| _build_object(legislator) }
  # end

  def self.all(zip)
    service.zip(zip).map { |legislator| _build_object(legislator) }
  end

  #fake find method just for check-in dummy simulation - remove this
  # def self.find(params)
  # end

  # def self.find(zip)
  #   # _build_object(service.legislator(id))
  #   service.legislator(bioguide_id)
  # end


  private

  def self._build_object(data)
    OpenStruct.new(data)
  end

end
