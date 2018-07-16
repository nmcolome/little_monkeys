require '../lib/numbers.rb'

class LittleMonkeys
  def run(number)
    names = NumbersToWords.new
    song = (2..number).to_a.reverse.map do |num|
      "#{names.run(num).capitalize} little monkeys jumping on the bed,\nOne fell off and bumped his head,\nMama called the doctor and the doctor said,\n\"No more monkeys jumping on the bed!\""
    end
    2.times do
      song << "One little monkey jumping on the bed,\nHe fell off and bumped his head,\nMama called the doctor and the doctor said,\n\"Get those monkeys right to bed!\""
    end
    song.join("\n\n")
  end
end

=begin
Three little monkeys jumping on the bed,
One fell off and bumped his head,
Mama called the doctor and the doctor said,
"No more monkeys jumping on the bed!"

Two little monkeys jumping on the bed,
One fell off and bumped his head,
Mama called the doctor and the doctor said,
"No more monkeys jumping on the bed!"

One little monkey jumping on the bed,
He fell off and bumped his head,
Mama called the doctor and the doctor said,
"Get those monkeys right to bed!"

One little monkey jumping on the bed,
He fell off and bumped his head,
Mama called the doctor and the doctor said,
"Get those monkeys right to bed!"
=end