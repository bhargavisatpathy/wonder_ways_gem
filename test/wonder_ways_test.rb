require_relative './test_helper'
require "minitest/autorun"
require "wonder_ways"

class WonderWaysTest < Minitest::Unit::TestCase
  attr_reader :wonder_ways

  def setup
    @wonder_ways = WonderWays.new 'http://localhost:3000'
  end

  def test_it_can_list_trails
    VCR.use_cassette("list_trails") do
      trails = wonder_ways.list_trails(1)
      assert_equal 30, trails.count
      first_trail = trails.first
      assert first_trail.name
      assert first_trail.city
      assert first_trail.state
    end
  end

  def test_it_can_find_trail_by_id
    VCR.use_cassette("find_trail_by_id") do
      trail = wonder_ways.find_trail(1)
      assert trail.name
      assert trail.city
      assert trail.state
    end
  end
end
