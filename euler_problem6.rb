# 最初の10個の自然数について, その二乗の和は,
# 12 + 22 + ... + 102 = 385

# 最初の10個の自然数について, その和の二乗は,
# (1 + 2 + ... + 10)2 = 3025

# これらの数の差は 3025 - 385 = 2640 となる.

# 同様にして, 最初の100個の自然数について二乗の和と和の二乗の差を求めよ.

class Euler_problem6
	square_sum = 0
	num_sum = 0
	(1..100).each {|num|
		square_sum += num ** 2
		num_sum += num
	}
	puts num_sum ** 2 - square_sum
end