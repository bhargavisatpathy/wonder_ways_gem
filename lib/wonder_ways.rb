require "wonder_ways/version"
require 'json'
require 'faraday'

class Trails
  attr_reader :connection

  def initialize(server = 'http://localhost:3000')
    @connection = Faraday.new(url: "#{server}/api/v1")
  end
end
