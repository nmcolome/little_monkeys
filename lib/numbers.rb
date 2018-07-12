class Numbers

  def names
    {
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
      90 => "ninety",
      100 => "hundred",
      1000 => "thousand",
      1000000 => "million"
    }
  end

  def builder(number)
    string_num = number.to_s
    if string_num.length == 1
      names[number]
    elsif string_num.length == 2 && string_num[0] == "1" || string_num[1] == "0"
      names[number]
    elsif string_num.length == 2
      temporary = [string_num.split(""), ["0", ""]].transpose
      tens = temporary[0].join.to_i
      unit = temporary[1].join.to_i
      names[tens] + "-" + names[unit]
    end
  end
end

