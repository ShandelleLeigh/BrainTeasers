require 'colorize'
puts `clear`


print ("*"*50 + "\n").light_blue
print ("*"*50 + "\n").light_green
print ("*"*50 + "\n").light_magenta


# not my code: #####
def in_words(int)
  numbers_to_name = {
      1000000 => "million",
      1000 => "thousand",
      100 => "hundred",
      90 => "ninety",
      80 => "eighty",
      70 => "seventy",
      60 => "sixty",
      50 => "fifty",
      40 => "forty",
      30 => "thirty",
      20 => "twenty",
      19=>"nineteen",
      18=>"eighteen",
      17=>"seventeen",
      16=>"sixteen",
      15=>"fifteen",
      14=>"fourteen",
      13=>"thirteen",
      12=>"twelve",
      11 => "eleven",
      10 => "ten",
      9 => "nine",
      8 => "eight",
      7 => "seven",
      6 => "six",
      5 => "five",
      4 => "four",
      3 => "three",
      2 => "two",
      1 => "one"
    }
  str = ""
  numbers_to_name.each do |num, name|
    if int == 0
      return str
    elsif int.to_s.length == 1 && int/num > 0
      return str + "#{name}"
    elsif int < 100 && int/num > 0
      return str + "#{name}" if int%num == 0
      return str + "#{name} " + in_words(int%num)
    elsif int/num > 0
      return str + in_words(int/num) + " #{name} " + in_words(int%num)
    end
  end
end

# start of my code: ######


input = 0
x = 'nothing'
puts "four is the magic number\n".green
until input == 'quit'
    puts "type in a number\n".blue
    input = gets.strip.to_i
    if input == nil
      puts "invalid input"
    else
        x = in_words(input)
        puts "\n#{x} is #{in_words(x.length)}\n".magenta
      until x.length == 4
        x = in_words(x.length)
        puts "#{x} is #{in_words(x.length)}\n".magenta
        puts
      end
    end
  puts "...and four is the magic number".green
  puts
  print ("*"*50 + "\n").light_blue
  print ("*"*50 + "\n").light_green
  print ("*"*50 + "\n").light_magenta
  puts
end
