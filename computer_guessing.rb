def bsearch(range)
  mid_index = range.length / 2
  puts "Is #{range[mid_index]} your number? Respond 'lower', 'higher', or 'yes'"
  user_input = gets.chomp
  if user_input == "higher"
    bsearch(range[(mid_index + 1)..(range.length - 1)])
  elsif user_input == "lower"
    bsearch(range[0..(mid_index - 1)])
  else
    return range[mid_index]
  end
end

puts "Think of a number between 1 and 100"
puts "#{bsearch((1..100).to_a)} is your number!"
