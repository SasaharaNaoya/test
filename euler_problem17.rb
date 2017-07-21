# 1~9
def ones_place(limit)
	result = 0
	i = 0
	[3,3,5,4,4,3,5,5,4].each do |num|
		if i != limit 
			result += num
			i += 1
		else
			break
		end
	end
	return result
end

# 10~19
def tens_place(limit)
	ones_place_num = limit % 10
	result = 0
	i = 0
	[3,6,6,8,8,7,7,9,8,8].each do |num|
		if i != ones_place_num+1 #fixme
			result += num
			i += 1
		else
			break
		end
	end
	return result += ones_place(9)
end

# 20~99
def twelve_ninetynine(limit)
	(limit - limit % 10) / 10
	result = 0
	i = 0
	[6,6,5,5,5,7,6,6].each do |num|

	end
	return result += tens_place(19)
end

# 100~999  (hundred and)で10文字
def hundreds_place(limit)
	result = 0
	i = 0
	[13,13,15,14,14,13,15,15,14].each do |num| 
		if i != limit-1 #fixme
			result += num + tens_place()
			i += 1
		else
			break
		end
	end
	return result += twelve_ninetynine(99)
end

# 1000~9999
# def 

# end

def distinguish(num)
	if num < 10 
		return ones_place(num)
	elsif num < 20
		return tens_place(num)
	elsif num <100
		return twelve_ninetynine(num)
	elsif num < 1000
		return hundreds_place(num)
	end
end

p distinguish(12)
