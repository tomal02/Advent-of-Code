require 'csv'

depths = CSV.read('input.csv').flatten.map(&:to_i)

increases, decreases = 0, 0

depths.each_with_index do |depth, index|
  next if index == 0
  if depth > depths[index - 1]
    increases += 1
  elsif depth < depths[index - 1]
    decreases += 1
  end
end

puts "The number of times the water rises is #{increases}"
puts "The number of times the water descends is #{decreases}"