class Euler_problem1
		total = 0
		(1..999).each do |num|
  			if num % 3 == 0 && num % 5 ==0
    			total += num
  			elsif num % 3 == 0 || num % 5 == 0
   			    total += num
  			end
		end 
		puts total
end
