require '../lib/numbers.rb'
require '../lib/text.rb'

class LittleMonkeys

  def run(number)
    song = monkeys_paragraphs(number)

    2.times do
      song << text.final_paragraphs
    end

    song.join("\n\n")
  end

  def monkeys_paragraphs(number)
    (2..number).to_a.reverse.map do |num|
      names.run(num).capitalize + text.no_more_jumping
    end
  end

  def names
    NumbersToWords.new
  end

  def text
    Text.new
  end

end