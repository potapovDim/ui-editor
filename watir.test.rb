require 'watir'
require 'rubygems'
require 'rspec'

describe "Weblium" do
  browser = Watir::Browser.new :chrome
  before :each do
    browser.goto 'localhost:8080'
    puts "before each !!!!"
  end
  it "click left nav " do
    browser.element(css: 'ul>li:nth-child(2)>button').click
    browser.element(css: '.previewElements__button_1jI').click
  end
  it "open block settings" do
    browser.element(css: '[data-test="edit-button"]').fire_event "mousemove"
    browser.element(css: '[data-test="edit-button"]').hover 
    browser.element(css: '[data-test="edit-button"]').click
  end
  after :all do
    browser.quit
  end
end

# => 'Hello World! - Google Search'