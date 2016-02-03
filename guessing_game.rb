def check_guess(u, c)
  if u > c
    return "high"
  elsif u < c
    return "low"
  else
    return "match"
  end
end

def is_repeat_guess?(n, guesses)
  (guesses.length - 1).times do |i|
    if guesses[i] == guesses[n]
      return true
      break
    end
  end
  return false
end

def generate_random_number
  return (Time.now.sec.to_f / 60 * 100).round
end

def is_wasted_guess?(n, guesses, c)
  (guesses.length - 1).times do |i|
    if ((guesses[n] < guesses[i]) && (guesses[i] < c)) || ((guesses[n] > guesses[i]) && (guesses[i] > c))
      return true
      break
    end
  end
  return false
end

computer = generate_random_number
guesses = []

5.times do |n|
  puts "Try and guess my number between 1 and 100"
  guesses[n] = gets.chomp.to_i
  if is_wasted_guess?(n, guesses, computer)
    puts "Don't waste your guesses!"
  end
  if is_repeat_guess?(n, guesses)
    puts "Really, repeating guesses? Okay.."
  end
  if check_guess(guesses[n], computer) == "match"
    puts "Correctamundo, #{guesses[n]} is the right number!"
    break
  else
    if n == 4
      puts "Sorry, you lose. The correct number was #{computer}"
    else
      puts "Too #{check_guess(guesses[n], computer)}"
    end
  end
end
