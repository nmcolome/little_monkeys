require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/little_monkeys.rb'

class LittleMonkeysTest < Minitest::Test
  def test_it_exists
    little_monkeys = LittleMonkeys.new

    assert_instance_of LittleMonkeys, little_monkeys
  end

  def test_prints_for_3_monkeys
    little_monkeys = LittleMonkeys.new
    paragraph = "Three little monkeys jumping on the bed,\nOne fell off and bumped his head,\nMama called the doctor and the doctor said,\n\"No more monkeys jumping on the bed!\""

    assert_equal paragraph, little_monkeys.run
  end
end