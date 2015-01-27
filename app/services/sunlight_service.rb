class SunlightService
  attr_reader :connection

  def initialize
    @connection = Faraday.new(url: "http://capitolwords.org/api/1")
  end

  def dates(text)
    parse(connection.get("http://capitolwords.org/api/1/dates.json?phrase=#{text}&apikey=f9fd085a62394fd298e88e036e7eeb11"))["results"]
  end

  def text(text)
    parse(connection.get("http://capitolwords.org/api/1/text.json?phrase=#{text}&apikey=f9fd085a62394fd298e88e036e7eeb11"))["results"]
  end

  private

  def parse(response)
    JSON.parse(response.body)
  end

end
