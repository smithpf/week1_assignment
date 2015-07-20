number_of_guesses = 0

puts "Let's play the guess the number game"
print "Please pick a difficulty level(1, 2, 3)"

difficulty = gets.chomp.to_i

def gets_the_number(difficulty)
  number = Random.new
  case difficulty
  when 1
    number = rand(10)
  when 2
    number = rand(100)
  else
    number = rand(1000)
  end
end

def guess_count_ratings(number_of_guesses)
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
end



number = gets_the_number(difficulty)

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
    puts guess_count_ratings(number_of_guesses)
    puts "Would you like to play again y/n?"
    answer = gets.chomp
    if answer != 'y'
      break
    end
  end
end