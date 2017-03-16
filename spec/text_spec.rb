require 'watir'
require 'rubygems'
require 'rspec'
require './po/elements/text/index'

describe 'Text element' do

  browser = Watir::Browser.new :chrome
  text = Text.new browser

  before :each do
    browser.goto 'localhost:8080'
    browser.window.resize_to 1200, 1600
  end

  it 'change text element align' do
    text.focus_element()
    text.context_panel_action("align center")
        .click_context_item("align left")
        .click_context_item("align right")
  end

  after :all do
    browser.quit
  end
end
