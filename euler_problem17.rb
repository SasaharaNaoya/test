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
	result = 0
	i = 0
	[3,6,6,8,8,7,7,9,8,8].each do |num|
		if i != limit+1 #fixme
			result += num
			i += 1
		else
			break
		end
	end
	return result
end

# 20~99
def twelve_ninetynine(limit)
	[6,6,5,5,5,7,6,6]

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
	return result
end

# 1000~9999
def thousands_place

end

def distinguish(num)
	ones_place_num = num % 10 
	if num < 10 
		return ones_place(num)
	elsif num < 20
		return tens_place(ones_place_num) + 36
	elsif num < 1000
		return hundreds_place(num)
	end
end

p distinguish(19)
