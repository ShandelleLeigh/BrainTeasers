intro = ""
@quitting = false
def start
  puts `clear`
  puts "\n"
  puts "Type in a word or phrase to check if it's a palindrome.  Type done to quit."
  until @quitting == true
    @orig_input = gets.strip
    @input = @orig_input.downcase.gsub(/\s+/, "")
    if  (@input.include? 'done') || (@input.include? 'quit')
      @quitting = true
      exit(0)
    else
      @array = @input.scan(/\w/)
      i = 0
      something = []
      until i == @input.length
        something << @array.last
        @array.pop
        i += 1
      end
      backwards = something.join('')
      if backwards == @input
        puts "Nice, #{@orig_input} is a palindrome."
        puts
      else
        puts "Nope, #{@orig_input} backwards is #{backwards}."
        puts
      end
    end
    puts
    puts "Type something else to check :"
  end
end

start
