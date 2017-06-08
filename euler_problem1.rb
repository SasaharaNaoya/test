class Euler_problem1
		i = 0
		(1..999).each do |k|
  			if k % 3 == 0 && k % 5 ==0
    			i += k
  			elsif k % 3 == 0
   			    i += k
  			elsif k % 5 == 0
    		    i += k
  			end
		end 
		puts i
end
