require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/numbers.rb'

class NumbersTest < Minitest::Test
  def test_it_returns_names
    numbers = Numbers.new

    assert_equal "one", numbers[1]
  end
end