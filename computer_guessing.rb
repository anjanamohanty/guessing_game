def bsearch(range, guesses)
  if guesses == 0
    return "Sorry, I'm all out of guesses"
  end

  mid_index = range.length / 2
  puts "Is #{range[mid_index]} your number? Respond 'lower', 'higher', or 'yes'"
  user_input = gets.chomp

  if user_input == "yes"
    return "#{range[mid_index]} is your number!"
  elsif is_lying?(mid_index, user_input, range)
    return "Lies and deceit!"
  elsif user_input == "lower"
    bsearch(range[0..(mid_index - 1)], (guesses - 1))
  elsif user_input == "higher"
    bsearch(range[(mid_index + 1)..(range.length - 1)], (guesses - 1))
  end
end

def is_lying?(mid_index, user_input, range)
  if mid_index == 0
    return true
  elsif user_input == "lower" && (range[mid_index] == range.first)
    return true
  elsif user_input == "higher" && (range[mid_index] == range.last)
    return true
  else
    return false
  end
end

puts "Think of a number between 1 and 100"
puts bsearch((1..100).to_a, 5)
