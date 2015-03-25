require "json"
require "pry"

class BluegrassParser
  def initialize
    @data = JSON.parse(File.open("data/data.json").read)
  end
end
