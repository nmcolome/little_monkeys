require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/little_monkeys.rb'
# require '../lib/numbers.rb'

class LittleMonkeysTest < Minitest::Test
  def skip test_it_exists
    little_monkeys = LittleMonkeys.new

    assert_instance_of LittleMonkeys, little_monkeys
  end

  def skip test_prints_2_paragraphs
    little_monkeys = LittleMonkeys.new

    paragraphs = "Three little monkeys jumping on the bed,\nOne fell off and bumped his head,\nMama called the doctor and the doctor said,\n\"No more monkeys jumping on the bed!\"\n\nTwo little monkeys jumping on the bed,\nOne fell off and bumped his head,\nMama called the doctor and the doctor said,\n\"No more monkeys jumping on the bed!\""

    assert_equal paragraphs, little_monkeys.run(3)
  end

  def test_prints_whole_song
    little_monkeys = LittleMonkeys.new

    song = "Three little monkeys jumping on the bed,\nOne fell off and bumped his head,\nMama called the doctor and the doctor said,\n\"No more monkeys jumping on the bed!\"\n\nTwo little monkeys jumping on the bed,\nOne fell off and bumped his head,\nMama called the doctor and the doctor said,\n\"No more monkeys jumping on the bed!\"\n\nOne little monkey jumping on the bed,\nHe fell off and bumped his head,\nMama called the doctor and the doctor said,\n\"Get those monkeys right to bed!\"\n\nOne little monkey jumping on the bed,\nHe fell off and bumped his head,\nMama called the doctor and the doctor said,\n\"Get those monkeys right to bed!\""

    assert_equal song, little_monkeys.run(3)
  end
end