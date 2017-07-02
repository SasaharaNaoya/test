# 1から100まで、数字を順番に出力する
# ただし、以下の場合は文字列を出力する
# 3の倍数:Fizzと出力 
# 5の倍数:Buzzと出力 
# 両方の倍数:FizzBuzzと出力

class Fizz_buzz1
	array = []
	(0..100).each do|num|
		if num % 15 == 0
			array.push('FizzBuzz')
		elsif num % 3 == 0
			array.push('Fizz')
		elsif num % 5 == 0
			array.push('Buzz')
		else
			array.push(num)
		end
		puts array
	end
end