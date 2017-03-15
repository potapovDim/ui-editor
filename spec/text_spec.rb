require 'watir'
require 'rubygems'
require 'rspec'
require './po/block/index'

describe "Weblium" do
  browser = Watir::Browser.new :chrome
  block = Block.new browser

  before :each do
    browser.window.resize_to 1200, 1600
    browser.goto 'localhost:8080'
  end

  it 'some' do
    
  end
  after :all do
    browser.quit
  end
end
