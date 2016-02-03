def bsearch(range)
  mid_index = range.length / 2
  puts "Is #{range[mid_index]} your number? Respond 'lower', 'higher', or 'yes'"
  user_input = gets.chomp
  if user_input == "yes"
    return "#{range[mid_index]} is your number!"
  else
    if mid_index == 0
      puts "Lies and deceit!"
    elsif user_input == "lower"
      if range[mid_index] == range.first
        puts "Lies and deceit!"
      else
        bsearch(range[0..(mid_index - 1)])
      end
    else
      if range[mid_index] == range.last
        puts "Lies and deceit"
      else
        bsearch(range[(mid_index + 1)..(range.length - 1)])
      end
    end
  end
end


puts "Think of a number between 1 and 100"
puts bsearch((1..100).to_a)
