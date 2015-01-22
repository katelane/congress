class SunlightService
  attr_reader :connection

  def initialize
    @connection = Faraday.new(url: "http://capitolwords.org/api/1")
  end

  # def state
  #   parse(connection.get("state"))
  # end
  #
  # def school(id)
  #   parse(connection.get("schools/#{id}"))
  # end
  #
  # def create_school(params)
  #   parse(connection.post("schools", params))
  # end

  private

  def parse(response)
    JSON.parse(response.body)
  end

end
