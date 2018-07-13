require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/numbers.rb'

class NumbersTest < Minitest::Test

  def test_it_returns_names
    numbers = Numbers.new

    assert_equal "one", numbers.names[1]
    assert_equal "twenty", numbers.names[20]
  end

  def test_it_builds_names
    numbers = Numbers.new

    assert_equal "five", numbers.scale(5)
    assert_equal "fifteen", numbers.scale(15)
    assert_equal "forty", numbers.scale(40)
    assert_equal "twenty five", numbers.scale(25)
    assert_equal "ninety nine", numbers.scale(99)
    assert_equal "one hundred", numbers.scale(100)
    assert_equal "three hundred fifty", numbers.scale(350)
    assert_equal "four hundred eleven", numbers.scale(411)
    # assert_equal "six thousand", numbers.builder(6000)
    # assert_equal "six thousand one hundred eleven", numbers.builder(6111)
    # assert_equal "one thousand eight hundred forty two", numbers.builder(1842)
    # assert_equal "twelve thousand", numbers.builder(12000)
    # assert_equal "one hundred twenty five thousand", numbers.builder(125000)
  end

end