require 'watir'
require 'rubygems'
browser = Watir::Browser.new :chrome

browser.goto 'google.com'
browser.text_field(id: 'lst-ib').set 'Hello Worldsadjsalfasjfjlaskjflasjfklkasjlfjlsajflasljklfjasjlfjlajsjfljsajd!'
browser.button(type: 'submit').click

puts browser.title
# => 'Hello World! - Google Search'
browser.quit