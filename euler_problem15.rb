def shortest_route(num)

	route_length = num * 2
	answer = 1
	while route_length > num
		answer = answer * (route_length.to_f / (route_length - num).to_f)
		route_length = route_length - 1
	end
	return answer.to_i
end

puts shortest_route(20)
