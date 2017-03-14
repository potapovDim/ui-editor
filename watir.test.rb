require 'watir'
require 'rubygems'
require 'rspec'
require './po/block/index'

describe "Weblium" do
  browser = Watir::Browser.new :chrome
  block = Block.new browser

  before :each do
    browser.goto 'localhost:8080'
  end
  it "change block top padding" do #change top paddin of block element   
    block.resize_padding 10, -10, "top"
    browser.wait 500
  end
  it "change block bottom padding" do #change bottom paddin block element 
    block.resize_padding 10, -10
    browser.wait 500
  end

  after :all do
    browser.quit
  end
end
