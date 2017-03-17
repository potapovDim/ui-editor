require 'watir'
require 'rubygems'
require 'rspec'
require './po/elements/image/index'

describe 'Image element' do

  browser = Watir::Browser.new :chrome
  image = Image.new browser

  before :each do
    browser.goto 'localhost:8080'
    browser.window.resize_to 1200, 1600
  end

  it 'change image element align' do
    image.focus_element()
    image.context_panel_action("align center")
        .click_context_item("align left")
        .click_context_item("align right")
        .click_context_item("align left")
        .click_context_item("align center")
        #.click_context_item("remove")
  end

  after :all do
    browser.quit
  end
end
