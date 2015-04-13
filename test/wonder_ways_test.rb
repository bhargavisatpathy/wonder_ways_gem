require_relative './test_helper'
require "minitest/autorun"
require "wonder_ways"

class WonderWaysTest < Minitest::Unit::TestCase
  attr_reader :wonder_ways

  def setup
    @wonder_ways = Trails.new 'http://localhost:3000'
  end

  def test_it_passes
    assert wonder_ways
  end
end
