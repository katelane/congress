class LegislatorService
  attr_reader :connection

  def initialize
    @connection = Faraday.new(url: "https://congress.api.sunlightfoundation.com/")
  end

  def legislators
    parse(connection.get("legislators/?apikey=f9fd085a62394fd298e88e036e7eeb11"))
  end

  def legislator(id)
    parse(connection.get("legislators?#{bioguide_id}&all_legislators=true&apikey=f9fd085a62394fd298e88e036e7eeb11"))
  end

  private

  def parse(response)
    JSON.parse(response.body)
  end

end
