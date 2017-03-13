require 'watir'
require 'rubygems'
require 'rspec'

describe "Weblium" do
  browser = Watir::Browser.new :chrome
  before :each do
    browser.goto 'localhost:8080'
  end
  it "click left nav " do
    browser.element(css: 'ul>li:nth-child(2)>button').click
    browser.element(css: '.previewElements__button_1jI').click
  end
  it "open block settings" do
    browser.element(css: '.blockDecorator_1Ch').hover 
    browser.element(css: '[data-test="edit-button"]').fire_event "mousemove"
    browser.element(css: '[data-test="edit-button"]').hover 
    browser.element(css: '[data-test="edit-button"]').click
  end
  it "change block top padding" do
    browser.element(css: '.blockDecorator_1Ch').hover 
    browser.element(css: '[data-test="block-padding-top"]').fire_event "mousemove"
    browser.element(css: '[data-test="block-padding-top"]').fire_event "mouseover"
    before_resize = browser.element(css: '[data-test="block-padding-top"]>div').inner_html
    
    browser.element(css: '[data-test="block-padding-top"]').hover
    browser.wait(1500)
    browser.element(css: '[data-test="block-padding-top"]').drag_and_drop_by -100, -100
    after_resize = browser.element(css: '[data-test="block-padding-top"]>div').inner_html
    expect(before_resize).to eq(after_resize)
    browser.wait 500
  end
  after :all do
    browser.quit
  end
end

# => 'Hello World! - Google Search'