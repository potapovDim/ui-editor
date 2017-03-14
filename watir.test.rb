require 'watir'
require 'rubygems'
require 'rspec'
require './po/paddings'

describe "Weblium" do
  browser = Watir::Browser.new :chrome
  paddings_po = PaddingsPO.new(browser)

  before :each do
    browser.goto 'localhost:8080'
  end
  it "click left nav " do #click left nav 
    browser.element(css: 'ul>li:nth-child(2)>button').click
    browser.element(css: '.previewElements__button_1jI').click
  end
  it "open block settings" do #open block settings
    browser.element(css: '.blockDecorator_1Ch').hover 
    browser.element(css: '[data-test="edit-button"]').fire_event "mousemove"
    browser.element(css: '[data-test="edit-button"]').hover 
    browser.element(css: '[data-test="edit-button"]').click
  end
  it "change block top padding" do #change top paddin of block element 
    browser.element(css: '.blockDecorator_1Ch').hover 
    browser.element(css: '[data-test="block-padding-top"]').fire_event "mousemove"
    browser.element(css: '[data-test="block-padding-top"]').fire_event "mouseover"
    
    paddings_po.resize_padding_top_block 10, -10
    browser.wait 500
  end
  it "change block bottom padding" do #change bottom paddin block element 
    browser.element(css: '.blockDecorator_1Ch').hover 
    browser.element(css: '[data-test="block-padding-top"]').fire_event "mousemove"
    browser.element(css: '[data-test="block-padding-top"]').fire_event "mouseover"
    
    paddings_po.resize_padding_bottom_block 10, -10
    browser.wait 500
  end
  after :all do
    browser.quit
  end
end
