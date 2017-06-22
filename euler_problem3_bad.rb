# euler_problem3

# 13195 の素因数は 5, 7, 13, 29 である.

# 600851475143 の素因数のうち最大のものを求めよ.

class Euler_problem3
	origin = 600851475143
	a = origin-1
	max = 1
	(2..a).each {|num|
		if origin % num == 0 
			while origin % num == 0 do
				max = num
				origin = origin / num
				p num
			end
		end
		p now:num
	}
	p max
end