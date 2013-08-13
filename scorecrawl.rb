require 'mechanize'


doc = Mechanize.new { |agent|
  agent.user_agent_alias = 'Mac Safari'
}



base_url = "http://www.footballdb.com/"
year = 2012
week = 1

end_url = "scores.html?lg=NFL&yr=#{year}&type=reg&wk=#{week}"

PAGE_URL = "#{base_url}#{end_url}"

puts PAGE_URL



page = doc.get(PAGE_URL)
counter = 0
page.body.split("\n").each do |k|
	line = k.chomp

	if line.match(/<td width="20%" align="right">(.+?)<\/td>/)
		puts $1
	end
end