# 正の整数に以下の式で繰り返し生成する数列を定義する.
#     n → n/2 (n が偶数)
#     n → 3n + 1 (n が奇数)
# 13からはじめるとこの数列は以下のようになる.
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# 13から1まで10個の項になる. この数列はどのような数字からはじめても最終的には 1 になると考えられているが, まだそのことは証明されていない(コラッツ問題)
# さて, 100万未満の数字の中でどの数字からはじめれば最長の数列を生成するか.¥
# 注意: 数列の途中で100万以上になってもよい

class Euler_problem14

	def self.length(num)
	    items_length = 0
	    value = num
	    while (value != 1) do
	    	if value % 2 == 0
	    		value = value / 2
	    		items_length += 1
	    	else
	    		value = value * 3 + 1
	    		items_length += 1
	    	end
	    end
	    return items_length if value <= 1
	end
	max_items = 0
	max_num = 0
	(1..1000000).each do |num|
		items_length = self.length(num)
		if items_length > max_items 
			max_items = items_length
			max_num = num
		end
	end		
	puts max_num
end
