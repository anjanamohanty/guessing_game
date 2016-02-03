def bsearch(range, x)
  mid_index = range.length / 2
  if range[mid_index] < x
    bsearch(range[(mid_index + 1)..(range.length - 1)], x)
  elsif range[mid_index] > x
    bsearch(range[0..(mid_index - 1)], x)
  else
    return range[mid_index]
  end
end

# puts "Think of a number between 1 and 100"
puts bsearch((1..100).to_a, 50)
