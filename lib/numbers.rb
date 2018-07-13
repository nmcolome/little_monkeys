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
    size = number.to_s.length

    if size == 1
      units(number)
    elsif size == 2 && (number / 10 == 1 || number % 10 == 0)
      units(number)
    elsif size == 2
      tens(number / 10) + " " + units(number % 10)
    elsif size == 3
      ( hundreds(number / 100) + " " + builder(number % 100) ).strip
    end
  end

  def units(number)
    names[number]
  end

  def tens(number)
    names[(number*10)]
  end

  def hundreds(number)
    units(number) + " hundred"
  end

  #similar to fizzbuzz million+thousand+hundreds
  def scale(number)
    size = number.to_s.length
    if size <= 3
      builder(number)
    elsif size <= 6
      thousands = number / 1000
      hundreds = number % 1000
      (builder(thousands) + " thousand " + builder(hundreds)).strip
    end
  end
end