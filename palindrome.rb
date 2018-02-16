# Create a new ruby script
# Add code to that ruby script to ask for user input and check to see if that user input is a palindrome or not
# https://en.wikipedia.org/wiki/Palindrome (Links to an external site.)
# DO NOT USE any STRING helper methods like .reverse this is a coding challenge to see how you would write all of the code to do this!
# Have you script go in a loop or a recursive method call so the user can keep checking palindromes
# Bonus Objectives:
# Make sure your palindrome checker works even with words with spaces in them
# Make sure your palindrome checker is case insensitive
# Push it to your github to help build your resume
# Use a gem like colorize or something else to make the script more fun and interactive to use
intro = ""
@quitting = false
def start
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
      else
        puts "Nope, #{@orig_input} backwards is #{backwards}."
      end
    end
    puts "Type something else to check :"
  end
end

start
