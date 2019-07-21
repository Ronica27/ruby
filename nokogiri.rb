require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("https://recipes.sainsburys.co.uk/recipes/main-courses/italian-pressed-sandwich"))
search = doc.css('.ingredient-label')

list = doc.css('.ingredient-label').inner_html
puts list