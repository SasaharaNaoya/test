# フィボナッチ数列の項は前の2つの項の和である. 最初の2項を 1, 2 とすれば, 最初の10項は以下の通りである.
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# 数列の項の値が400万以下の, 偶数値の項の総和を求めよ.

# 最初の2項を 1, 2 
# 数列の項の値が400万以下
# 前の2つの項の和を加算
# 偶数値の項を取り出す
# その総和

class Euler_problem2
	items = []
	items[0,1] = 1,2
	num = 1
	evan_sum = 2
	while true do
		if (0...4000000).include?(items[num])
			num += 1
			items[num] = (items[num-1] + items[num -2])
			if (items[num] % 2) == 0
				evan_sum += items[num]
			end
		else
			break
		end
	end
	puts evan_sum
end