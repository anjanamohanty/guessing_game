def is_too_high?(user_input,random_number)
  if user_input > random_number
    return true
  else
    return false
  end
end

def is_too_low?(user_input,random_number)
  if user_input < random_number
    return true
  else
    return false
  end
end

random_number = rand(1..100)

5.times do |n|

  puts "Try and guess my number between 1 and 100.. you have #{5-n} guess(es) left"
  user_input = gets.chomp.to_i
  last_guess = user_input

  if !is_too_low?(user_input, random_number) && !is_too_high?(user_input, random_number)
    puts "Correctamundo, #{user_input} is the right number!"
    break
  else
    if last_guess == user_input && n > 0
        puts "Really - same guess as last time?"
    end
    if n == 4
      puts "Sorry, you lose. The correct number was #{random_number}"
    elsif is_too_low?(user_input, random_number)
      puts "Too low"
    else
      puts "Too high"
    end
  end

  last_guess = user_input

end
