class LegislatorService
  attr_reader :connection

  def initialize
    @connection = Faraday.new(url: "https://congress.api.sunlightfoundation.com/")
  end

  def legislators
    parse(connection.get("legislators/?apikey=f9fd085a62394fd298e88e036e7eeb11"))["results"]
  end

  def zip(zip)
    parse(connection.get("congress.api.sunlightfoundation.com/legislators/locate?zip=#{zip}&apikey=f9fd085a62394fd298e88e036e7eeb11"))["results"]
  end

  private

  def parse(response)
    JSON.parse(response.body)
  end
end
