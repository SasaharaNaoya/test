def sum_each_degit(power)
	result = 2 ** power
	array_each_position = result.to_s.split("")
	result_sum = 0
	array_each_position.each {|position| result_sum += position.to_i}
	return result_sum
end

p sum_each_degit(1000)