# Sums each window and then compares two to find whether it increases or decreases
require 'csv'

depths = CSV.read('input.csv').flatten.map(&:to_i)

increases, decreases = 0, 0

depths.each_cons(3).to_a.each_cons(2) do |window1, window2|
  if window1.sum < window2.sum
    increases += 1
  elsif window1.sum > window2.sum
    decreases += 1
  end
end

puts "The number of times the water rises is #{increases}"
puts "The number of times the water descends is #{decreases}"