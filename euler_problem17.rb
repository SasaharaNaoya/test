# 1~9
def ones_place(limit)
	result = 0
	[3,3,5,4,4,3,5,5,4].each do |num|
		if i != limit-1 #fixme
			result = num
		else
			break
		end
	end
	return result
end

# 10~19
def tens_place(limit)
	result = 0
	[3,6,6,8,8,7,7,9,8,8].each do |num|
		if i != limit-1 #fixme
			result = num
		else
			break
		end
	end
	return result
end

# 20~99

# 100~999  (hundred and)で10文字
def hundreds_place(limit)
	result = 0
	[13,13,15,14,14,13,15,15,14].each do |num| 
		if i != limit-1 #fixme
			result = num
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
	if num < 10 #fixme

end

p distinguish(5)
