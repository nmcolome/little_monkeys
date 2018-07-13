require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/numbers.rb'

class NumbersTest < Minitest::Test

  def setup
    @numbers = Numbers.new
  end

  def test_it_returns_names
    assert_equal "one", @numbers.names[1]
    assert_equal "twenty", @numbers.names[20]
  end

  def test_it_builds_names_under_100
    assert_equal "five", @numbers.scale(5)
    assert_equal "fifteen", @numbers.scale(15)
    assert_equal "forty", @numbers.scale(40)
    assert_equal "twenty five", @numbers.scale(25)
    assert_equal "ninety nine", @numbers.scale(99)
    assert_equal "six thousand", @numbers.scale(6000)
  end
  
  def test_it_builds_names_for_hundreds
    assert_equal "one hundred", @numbers.scale(100)
    assert_equal "three hundred fifty", @numbers.scale(350)
    assert_equal "four hundred eleven", @numbers.scale(411)
  end
  
  def test_it_builds_names_for_thousands
    assert_equal "six thousand one hundred eleven", @numbers.scale(6111)
    assert_equal "one thousand eight hundred forty two", @numbers.scale(1842)
    assert_equal "twelve thousand", @numbers.scale(12000)
    assert_equal "one hundred twenty five thousand", @numbers.scale(125000)
    assert_equal "one hundred twenty five thousand seven hundred twenty one", @numbers.scale(125721)
  end

end