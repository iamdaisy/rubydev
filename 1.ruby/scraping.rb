require 'httparty'
require 'nokogiri'


uri = "http://finance.naver.com/sise/"
response = HTTParty.get(uri)

 text = Nokogiri::HTML(response.body)

 kospi = text.css('#KOSPI_now') # css selector : 알고자하는 값 우클릭 -> 검사 -> 우클릭 ->  copy selector

 puts kospi.text