require 'pry'
class Numbers

  def names
    {
      0 => "",
      1 => "one",
      2 => "two",
      3 => "three",
      4 => "four",
      5 => "five",
      6 => "six",
      7 => "seven",
      8 => "eight",
      9 => "nine",
      10 => "ten",
      11 => "eleven",
      12 => "twelve",
      13 => "thirteen",
      14 => "fourteen",
      15 => "fifteen",
      16 => "sixteen",
      17 => "seventeen",
      18 => "eighteen",
      19 => "nineteen",
      20 => "twenty",
      30 => "thirty",
      40 => "forty",
      50 => "fifty",
      60 => "sixty",
      70 => "seventy",
      80 => "eighty",
      90 => "ninety"
    }
  end

  def builder(number)
    num_s = number.to_s
    size = num_s.length

    if size == 1
      units(number)
    elsif size == 2 && (num_s[0] == "1" || num_s[1] == "0")
      units(number)
    elsif size == 2
      tens(num_s[0]) + " " + units(num_s[1].to_i)
    elsif size == 3
      ( hundreds(num_s[0].to_i) + " " + builder(num_s[1..2].to_i) ).strip
      #iterate the tens
    end
  end

  def units(number)
    names[number]
  end

  def tens(number)
    names[(number+"0").to_i]
  end

  def hundreds(number)
    units(number) + " hundred"
  end
end

num = Numbers.new

# p num.builder(500)