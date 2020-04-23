require 'open-uri'
require 'nokogiri'

html_content = open('https://www.etsy.com/search?q=wallet').read
doc = Nokogiri::HTML(html_content)

doc.search('.responsive-listing-grid .v2-listing-card__info .text-body').each_with_index do |element, index|
  puts "#{index + 1}. #{element.text.strip}"
end

html_doc.search('.teaser-item__title a').each do |element|
  puts element.text.strip
  puts element.attribute('href').value
end
