# 素数を小さい方から6つ並べると 2, 3, 5, 7, 11, 13 であり, 6番目の素数は 13 である.

# 10 001 番目の素数を求めよ.

class Euler_problem7

	require 'prime'

	i = 2
	num = 1
	loop do
	    if i.prime?
	        num += 1
	    end
	    if num > 10001
	        break
	    end
	    i += 1
	end
	puts i

end
