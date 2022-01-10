require 'csv'

input = CSV.read('input.csv').flatten

horizontalPos, verticalPos = 0, 0

input.each do |line|
  direction = line.split(' ')[0]
  amount = line.split(' ')[1].to_i

  case direction
  when 'up'
    verticalPos -= amount
  when 'down'
    verticalPos += amount
  when 'forward'
    horizontalPos += amount
  end
end

puts verticalPos * horizontalPos
