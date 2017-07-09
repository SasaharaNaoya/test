

def shortest_route(num)

	route_length = num * 2
	molecule = 1
	denominator = 1
	(1..route_length).each do |a|
		molecule = molecule * (route_length - (a-1))
		denominator = denominator * a
	end
	return molecule / denominator
end

puts shortest_route(3)