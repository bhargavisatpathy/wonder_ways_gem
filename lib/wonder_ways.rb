require "wonder_ways/version"
require 'json'
require 'faraday'
require 'trail'

class WonderWays
  attr_reader :connection

  def initialize(server = 'http://localhost:3000')
    @connection = Faraday.new(url: "#{server}/api/v1")
  end

  def list_trails(page = 1)
    params = { page: page }
    JSON.parse(connection.get('trails', params).body)['trails'].map { |data| Trail.new(data) }
  end

  def find_trail(id = 1)
    params = { id: id }
    data = JSON.parse(connection.get("trails/#{id}", params).body)['trail']
    Trail.new(data)
  end

  # def search_trails_by_state(state = "CO")
  #   params = { state: state }
  #   JSON.parse(connection.get("search?state=#{state}", params).body)['trails'].map { |data| Trail.new(data) }
  # end
end
