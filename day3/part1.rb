require 'csv'

input = CSV.read('input.csv').flatten

def gamma_rate(input)
  final_array = []
  i = 0

  while i < input[0].length
    one = 0
    zero = 0
    input.each do |binary|
      one += 1 if binary[i] == '1'
      zero += 1 if binary[i] == '0'
    end
      if one > zero
        final_array << '1'
      else
        final_array << '0'
      end
    i+=1
  end
  return final_array.join
end

def epsilon_rate(input)
  final_array = []
  i = 0

  while i < input[0].length
    one = 0
    zero = 0
    input.each do |binary|
      one += 1 if binary[i]== '1'
      zero += 1 if binary[i] == '0'
    end
      if one < zero
        final_array << '1'
      else
        final_array << '0'
      end
    i+=1
  end
  return final_array.join
end

gamma_rate = gamma_rate(input).to_i(2)
epsilon_rate = epsilon_rate(input).to_i(2)

puts "The gamma rate is #{gamma_rate}"
puts "The epsilon rate is #{epsilon_rate}"
puts "The power consumption is #{gamma_rate * epsilon_rate}"
