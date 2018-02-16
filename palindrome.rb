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

@quitting = false
def start
  until @quitting == true

    puts "Type in a word or phrase to check if it's a palindrome.  Type done to quit."

    @input = gets.strip.downcase.gsub(/\s+/, "")
    # puts @input
    if  (@input.include? 'done') || (@input.include? 'quit')
      @quitting = true
      exit(0)
    else


      @array << @input.scan(/\w/)
      slength = @input.length
      puts slength
      #
      # puts @array.join(', ')
      # puts @array
      # puts @array.join(', ')
      i = 0
      puts something
      until i == slength
        # last_thing =
        # puts last_thing
        # puts "#{i} #{last_thing}"
        something = @array.last
        @array.pop

        # puts "something #{something}"
        i += 1
      end


    end
  end
end

start
