require 'watir'
require 'rubygems'
require 'rspec'

describe "Weblium" do
  before :all do
    @browser = Watir::Browser.new :chrome
    @browser.goto 'localhost:8080'
  end
  it "click left nav " do
    @browser.element(css: 'ul>li:nth-child(2)>button').click
    @browser.element(css: '.previewElements__button_1jI').click
  end
  after :all do
    @browser.quit
  end
end

# => 'Hello World! - Google Search'