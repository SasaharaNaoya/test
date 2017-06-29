include Math

class Euler_problem10

	def self.fetch_prime_list(max)
	  list = (2..max).to_a
	  prime_list = []
	  sqrt = Math.sqrt(max).floor

	  while val = list.shift
	    prime_list << val
	    if val > sqrt
	      break
	    end
	    list.delete_if{|num| num % val == 0}
	  end
	  return prime_list.concat(list)
	end

	def self.get_sum_fetch_prime_list(max)
		sum_prime_number = 0
		self.fetch_prime_list(max).each{|num|
			sum_prime_number += num
		}

		return sum_prime_number
	end
	
	p self.get_sum_fetch_prime_list(2000000)
end