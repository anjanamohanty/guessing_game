random_number = rand(1..100)

def check_guess(user_input,random_number)
  if user_input > random_number
    puts "Too high, try again"
    return false
  elsif user_input < random_number
    puts "Too low, try again"
    return false
  else
    puts "Correctamundo! Nice work"
    return true
  end
end

5.times do |n|
  puts "Try and guess my number.. you have #{5-n} guesses left"
  user_input = gets.chomp.to_i

  if check_guess(user_input, random_number)
    break
  end
end
