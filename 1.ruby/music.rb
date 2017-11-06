require 'httparty'
require 'nokogiri'


uri = "http://music.naver.com/"
response = HTTParty.get(uri)

 text = Nokogiri::HTML(response.body)

 music = text.css('#content > div._top100_container.top100_container.home_section.NE\3d a\3a t1k > div._top100_content.top100_content > div.tc_panel.tc_selected > table > tbody > tr._tracklist_move._track_dsc.list1 > td.name > span > a') # css selector : 알고자하는 값 우클릭 -> 검사 -> 우클릭 ->  copy selector

 puts music.text