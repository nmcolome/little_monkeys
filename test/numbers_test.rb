require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/numbers.rb'

class NumbersToWordsTest < Minitest::Test

  def setup
    @numbers = NumbersToWords.new
  end

  def test_it_builds_names_under_100
    assert_equal "five", @numbers.run(5)
    assert_equal "fifteen", @numbers.run(15)
    assert_equal "forty", @numbers.run(40)
    assert_equal "twenty five", @numbers.run(25)
    assert_equal "ninety nine", @numbers.run(99)
  end
  
  def test_it_builds_names_for_hundreds
    assert_equal "one hundred", @numbers.run(100)
    assert_equal "three hundred fifty", @numbers.run(350)
    assert_equal "four hundred eleven", @numbers.run(411)
  end
  
  def test_it_builds_names_for_thousands
    assert_equal "six thousand", @numbers.run(6000)
    assert_equal "six thousand one hundred eleven", @numbers.run(6111)
    assert_equal "one thousand eight hundred forty two", @numbers.run(1842)
    assert_equal "twelve thousand", @numbers.run(12000)
    assert_equal "one hundred twenty five thousand", @numbers.run(125000)
    assert_equal "one hundred twenty five thousand seven hundred twenty one", @numbers.run(125721)
  end

  def test_it_builds_names_for_millions
    assert_equal "three million", @numbers.run(3000000)
    assert_equal "twelve million", @numbers.run(12000000)
    assert_equal "one hundred eleven million", @numbers.run(111000000)
    assert_equal "seven hundred forty nine million one hundred fifty two thousand seven hundred twenty one", @numbers.run(749152721)
  end

  def test_it_builds_names_for_billions
    assert_equal "three billion", @numbers.run(3000000000)
    assert_equal "twelve billion", @numbers.run(12000000000)
    assert_equal "one hundred eleven billion", @numbers.run(111000000000)
    assert_equal "seven hundred forty nine billion one hundred fifty two million seven hundred twenty one thousand", @numbers.run(749152721000)
  end

end