puts "Give me a number"
number_1 = gets.to_i

def always_three(userNum)
	((((userNum + 5) *2)-4)/2)-userNum
end

puts "Always " + always_three(number_1).to_s