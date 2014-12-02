def guess_number(guess)
  $number||= get_number
  puts check_number($number, guess)
  play unless $number == guess
end

def get_number
  rand(10)
end

def check_number(number, guess)
  if number > guess
    return 'too low. guess again.'
  elsif number < guess
    return 'too high. guess again.'
  else
    return "you guessed it! the number was #{number}"
  end
end

def play
  guess = gets
  guess_number(guess.to_i)
end

puts 'pick a number between 1 and 10'
play