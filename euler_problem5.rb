# 2520 は 1 から 10 の数字の全ての整数で割り切れる数字であり, そのような数字の中では最小の値である.

# では, 1 から 20 までの整数全てで割り切れる数字の中で最小の正の数はいくらになるか.

class Euler_problem5
	ans = 1
	count = 1
	loop{
		a = true
	  	(2..20).each {|num|
	 		while !(count % num == 0) do
	 			a = false
	 			break
	 		end
	 	}
	 	if a == true
	 		ans = count
	 		break
	 	end
	 	count += 1
	}
	p ans
end