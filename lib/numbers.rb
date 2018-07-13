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

  def size_to_scale
    {
      3 => 100,
      4 => 1000,
      5 => 1000,
      6 => 1000,
      7 => 1000000,
      8 => 1000000,
      9 => 1000000,
      10 => 1000000000,
      11 => 1000000000,
      12 => 1000000000,
      13 => 1000000000000,
      14 => 1000000000000,
      15 => 1000000000000
    }
  end

  def size_to_scale_name
    {
      3 => " hundred ",
      4 => " thousand ",
      5 => " thousand ",
      6 => " thousand ",
      7 => " million ",
      8 => " million ",
      9 => " million ",
      10 => " billion ",
      11 => " billion ",
      12 => " billion ",
      13 => " trillion ",
      14 => " trillion ",
      15 => " trillion "
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

  def scale(number)
    size = number.to_s.length
    if size <= 3
      builder(number)
    else
      first_part = number / size_to_scale[size]
      remainder = number % size_to_scale[size]
      ( builder(first_part) + size_to_scale_name[size] + scale(remainder) ).strip
    end
  end
end