 class Euler_problem12
 
  def self.num_divisors_of(num)
    sum = 0
    (1..num/2).each do |i|
      if num % i == 0 then sum += 1 end
    end
    return sum += 1
  end

  current_sum = 0

  (1..10000).each do |i|
    current_sum += i
    if self.num_divisors_of(current_sum) > 500
      puts current_sum
      break
    end
  end
end