# 次の情報が与えられている.

#     1900年1月1日は月曜日である.
#     9月, 4月, 6月, 11月は30日まであり, 2月を除く他の月は31日まである.
#     2月は28日まであるが, うるう年のときは29日である.
#     うるう年は西暦が4で割り切れる年に起こる. しかし, 西暦が400で割り切れず100で割り切れる年はうるう年でない.

# 20世紀（1901年1月1日から2000年12月31日）中に月の初めが日曜日になるのは何回あるか?

def getdays(month,year)
	if ['4','6','9','11'].include?(month)
		return 30
	elsif ['1','3','5','7','8','10','12'].include?(month)
		return 31
	elsif year % 400 == 0
		return 28
	elsif year % 100 == 0
		return 28
	elsif year % 4 == 0
		return 29
	else
		return 28
	end
end

def nextdate(date)
	return (date[0] + getdays(date[1],date[2])) % 7
end

def nextmonth(date)
	if date[1] == 12
		date[1] = 1
		date[2] += 1 
		return date
	else
		date[1] += 1
		return date
	end
end

def main
	start_year = 1900
	last_year = 2000
	date = [1,1,1900]
	ans = 0

	while date[2] <= last_year
		date[0] = nextdate(date)
		date = nextmonth(date)

		if date[0] == 0
			ans += 1
		end
	end
	return ans
end


p main