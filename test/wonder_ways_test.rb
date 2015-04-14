require_relative './test_helper'
require "minitest/autorun"
require "wonder_ways"

class WonderWaysTest < Minitest::Unit::TestCase
  attr_reader :wonder_ways

  def setup
    @wonder_ways = WonderWays.new 'http://localhost:3000'
  end

  def test_it_can_list_trails
    trails = wonder_ways.list_trails(1)
    assert_equal 30, trails.count
    first_trail = trails.first
    assert first_trail.name
  end
end
