random_number = rand(1..100)

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

5.times do |n|


  puts "Try and guess my number between 1 and 100.. you have #{5-n} guesses left"
  user_input = gets.chomp.to_i

  if !is_too_low?(user_input, random_number) && !is_too_high?(user_input, random_number)
    puts "Correctamundo, #{user_input} is the right number!"
  elsif (is_too_low?(user_input, random_number) || is_too_high?(user_input, random_number)) && (n == 4)
    puts "Sorry, you lose"
  else
    if is_too_low?(user_input, random_number)
      puts "Too low"
    else
      puts "Too high"
    end
  end
end
