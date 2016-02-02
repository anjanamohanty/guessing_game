def check_guess(u, c)
  if u > c
    return "high"
  elsif u < c
    return "low"
  else
    return "true"
  end
end

def repeat_guess?(n, guesses)
  (guesses.length - 1).times do |i|
    if guesses[i] == guesses[n]
      return true
      break
    end
  end
  return false
end

computer = rand(1..100)
guesses = []

5.times do |n|

  puts "Try and guess my number between 1 and 100"
  guesses[n] = gets.chomp.to_i

  if repeat_guess?(n, guesses)
    puts "Really, repeating guesses? Okay.."
  end
  if check_guess(guesses[n], computer) == "true"
    puts "Correctamundo, #{guesses[n]} is the right number!"
    break
  elsif n == 4
      puts "Sorry, you lose. The correct number was #{computer}"
  else
      puts "Too #{check_guess(guesses[n], computer)}"
  end

end
