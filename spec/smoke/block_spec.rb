require 'watir'
require 'rubygems'
require 'rspec'
require './po/block/index'

describe "Block component" do
  browser = Watir::Browser.new :chrome
  block = Block.new browser

  before :each do
    browser.window.resize_to 1200, 1600
    browser.goto 'localhost:8080'
  end

  it "change block top padding" do #change top paddin of block element   
    block.resize_padding()
         .resize_padding_top_block(10, -10)
    browser.wait 500
  end

  it "change block bottom padding" do #change bottom paddin block element 
    block.resize_padding()
         .resize_padding_bottom_block(10, -10)
    browser.wait 500
  end

  it "change block background type to color color" do #change block background type to color and change alpha chanel
    block.click_block_context("settings")
         .
    # block.change_block_background "color"
    # block.open_color_picker
    #      .change_color(10, 10)
    #      .change_color(10, 50, "hue")
    #      .change_color(-45, 50, "saturation")
    browser.send_keys :escape
  end

  # it "change block background to image " do #change block background to image and change background position
  #   block.click_block_context "settings"
  #   block.change_block_background("image")  
  #        .change_background_size("cover")
  #        .change_background_position("top right")
  # end

  # it "change open media gallery" do
  #   block.click_block_context "settings"
  #   block.change_block_background("image")  
  #   block.open_media_gallery()
  #        .select_tab("my images")
  #        .select_tab("free fotos")
  #        .select_tab("help")
  # end

  # it "change open media gallery and searc free photo" do
  #   block.click_block_context "settings"
  #   block.change_block_background("image")  
  #   block.open_media_gallery()
  #        .select_tab("free fotos")
  #        .search_free_photo("test")
  #        .search_free_photo("abra")
  #        .search_free_photo("dsal;kd;asll;dksak;")
  # end

  # it "change background to image and change image" do
  #   block.click_block_context "settings"
  #   block.change_block_background("image")  
  #   block.open_media_gallery()
  #        .select_tab("free fotos")
  #        .choose_background_image(0)

  # end
  after :all do
    browser.quit
  end
end
