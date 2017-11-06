require 'httparty'
require 'nokogiri'


uri = "http://finance.naver.com/sise/"
response = HTTParty.get(uri) # HTTParty를 통해서 uri정보 가져옴
 text = Nokogiri::HTML(response.body) # Nokogiri를 통해 검색이 용이한 형태로 가져옴
# Nokogiri XML
# xml_doc  = Nokogiri::XML("<root><aliens><alien><name>Alf</name></alien></aliens></root>")
 kospi = text.css('#KOSPI_now') # css selector : 알고자하는 값 우클릭 -> 검사 -> 우클릭 ->  copy selector

 puts kospi.text #tag안에 있는 값만 가져오기위해서 text씀