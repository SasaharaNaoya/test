class Euler_problem5_kai

	def self.get_min_divisible_number(first,last)
		result = first
		(first..last).each {|element|
			result = lcm(result,element)
		}
		return result
	end

	def self.gcd(x,y)
		while !(y > 0) do
			y = x % y
			x = y
		end
		return x
	end

	def self.lcm(x,y)
		return x * y / gcd(x,y)
	end

	puts self.get_min_divisible_number(1,20)
end