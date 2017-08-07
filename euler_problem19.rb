# 次の情報が与えられている.

#     1900年1月1日は月曜日である.
#     9月, 4月, 6月, 11月は30日まであり, 2月を除く他の月は31日まである.
#     2月は28日まであるが, うるう年のときは29日である.
#     うるう年は西暦が4で割り切れる年に起こる. しかし, 西暦が400で割り切れず100で割り切れる年はうるう年でない.

# 20世紀（1901年1月1日から2000年12月31日）中に月の初めが日曜日になるのは何回あるか?

def getdays(month)
	if ['4','6','9','11'].include?(month)
		return 30
	elsif ['1','3','5','7','8','10','12'].include?(month)
		return 31
	elsif month % 400 == 0
		return 28
	elsif month % 100 == 0
		return 28
	elsif month % 4 == 0
		return 29
	else
		return 28
	end
end

p getdays('12')