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

  it "change block background type none" do #change block background type to none
    block.click_block_context "settings"
    block.change_block_background
  end

  it "change block background type color" do #change block background type to color and change alpha chanel
    block.click_block_context "settings"
    block.change_block_background "color"
    block.change_color 10, 0
  end
  after :all do
    browser.quit
  end
end
