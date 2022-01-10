require 'csv'

input = CSV.read('input.csv').flatten

horizontalPos, verticalPos, aim, depth = 0, 0, 0, 0

input.each do |line|
  direction = line.split(' ')[0]
  amount = line.split(' ')[1].to_i

  case direction
  when 'up'
    aim -= amount
  when 'down'
    aim += amount
  when 'forward'
    horizontalPos += amount
    depth += (aim * amount)
  end
end

puts depth * horizontalPos
