number_of_guesses = 0

# I'm not sure what this variable means. You should not abbreviate variables. 
# We aren't working in memory-constrained environments anymore. Characters
# are cheap - time to understand code isn't.
diff_choice = 0

number = 0

puts "Let's play the guess the number game"
print "Please pick a difficulty level(1, 2, 3)"

diff_choice = gets.chomp.to_i

## This function should be defined more specifically.
## What does this function do? It gets_computer_number
## and it should take in the difficulty from the main
## program. It should not read a global variable.
#
# def level(difficulty)
#  case difficulty
#   ...
# end

def level
  
  case diff_choice
  when 1
    number = rand(1...10)
  when 2
    number = rand(1...100)
  else
    number = rand(1...1000)
  end
end
  
loop do
  print "Please guess the number"
  user_guess = gets.chomp.to_i
  number_of_guesses +=1
    
  unless user_guess == number
    message = ""
    if user_guess > number
      message = "Too high"
    else
      message = "Too low"
    end
    puts message
  else
    puts "You guessed it!"
    puts "It took you #{number_of_guesses} guesses"
    ## I'd break this out into a function that accepts the number of guesses and returns a string.
    case number_of_guesses
    when 1
      puts "You're a mind reader!"
    when 2..4
      puts "Most impressive."
    when 3..6
      puts "You can do better than that."
    else
      puts "Better luck next time."
    end
    exit
  end
  ## where's the code to play again?
end
