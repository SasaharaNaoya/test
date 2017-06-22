# euler_problem3

# 13195 の素因数は 5, 7, 13, 29 である.

# 600851475143 の素因数のうち最大のものを求めよ.

class Euler_problem3
	origin = 600851475143
	max = 0
	num = 2
	while origin > 1 do
		while origin % num == 0 do
			max = num
			origin = origin / num
		end
		num = num + 1
	end
	p max
end