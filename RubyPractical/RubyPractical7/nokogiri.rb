require 'rubygems'
require 'nokogiri'
doc = Nokogiri::HTML(File.open("The Answer Company _ Thomson Reuters.html"))
elements = doc.xpath("//img")
p elements.length
p elements


doc.search('//li/a[@href]').each do |char_element|
puts char_element
end

