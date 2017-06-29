class Euler_problem9

	(1..1000).each do |a|
	  (a..(1000 - a)).each do |b|
	    c = 1000 - a - b
	    if a**2 + b**2 == c**2 
	    	puts a * b * c
	    end
	  end
	end

end