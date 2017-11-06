require  'launchy'

url = "https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query="
keywords = ["양세종", "서현진", "김재욱"]

#Launchy.open(url + keywords[1])


keywords.each do |keyword|
	Launchy.open(url + keyword)
end

#iteration - for 
for keyword in keywords
	Launchy.open(url + keyword)
end