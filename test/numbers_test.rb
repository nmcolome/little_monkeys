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

    assert_equal "five", numbers.builder(5)
    assert_equal "fifteen", numbers.builder(15)
    assert_equal "forty", numbers.builder(40)
    assert_equal "twenty-five", numbers.builder(25)
    assert_equal "ninety-nine", numbers.builder(99)
  end

end