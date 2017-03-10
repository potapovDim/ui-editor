require 'watir'
require 'rubygems'
browser = Watir::Browser.new :chrome

browser.goto 'localhost:8080'

browser.element(css: 'ul>li:nth-child(2)>button').click
browser.element(css: '.previewElements__button_1jI').click

# => 'Hello World! - Google Search'
#browser.quit