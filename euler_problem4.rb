# 左右どちらから読んでも同じ値になる数を回文数という. 2桁の数の積で表される回文数のうち, 最大のものは 9009 = 91 × 99 である.

# では, 3桁の数の積で表される回文数の最大値を求めよ.

class Euler_problem4
	num = 0
	ans = 0
	(1..999).each {|left|
		(1..999).each {|right|
		num = left * right
		if num.to_s == num.to_s.reverse
			if ans < num
				ans = num
			end
		end
		}
	}
	p ans
end