require_relative '../../scripts/local.rb'
require './po/block/index'

describe "Block component" do
  before :each do
    @browser.window.resize_to 1200, 1600
    @browser.goto 'localhost:8080'
  end
  
  it "change block top padding" do #change top paddin of block element   
    @block.resize_padding()
          .resize_padding_top_block(10, -10, 1)
    @browser.wait 500
  end

  it "change block bottom padding" do #change bottom paddin block element 
    @block.resize_padding()
         .resize_padding_bottom_block(10, -10, 1)
    @browser.wait 500
  end
  
  it "change block content appearance" do
    @block.click_block_context("settings", 1)
          .choose_tab("appearance")
          .change_block_appearance("full-full")
          .change_block_appearance("full-center")
          .change_block_appearance()
    @browser.send_keys :escape
  end

  it "change block background type to color color" do #change block background type to color and change alpha chanel
    @block.click_block_context("settings", 1)
          .choose_tab("background")
          .change_background_type("color")
          .open_color_picker()
          .change_color(10, 10)
          .change_color(10, 50, "hue")
          .change_color(-45, 50, "saturation")
    @browser.send_keys :escape
  end

  it "change block background to image " do #change block background to image and change background position
    @block.click_block_context("settings", 1)
          .choose_tab("background")
          .change_background_type("image")
          .change_background_size("cover")
          .change_background_position("top center")
  end

  it "change open media gallery, change tabs" do
    @block.click_block_context("settings", 1)
          .choose_tab("background")
          .change_background_type("image")
          .open_gallery()
          .select_tab("free photos")
          .search_free_photo("dsalkdklasjkljd")
          .select_tab("my images")
          .select_tab("help")
    @browser.send_keys :escape
  end


  it "pick new image for background" do
    @block.click_block_context("settings", 1)
         .choose_tab("background")
         .change_background_type("image")
         .open_gallery()
         .select_tab("free photos")
         .choose_background_image(1)
    @browser.send_keys :escape    
  end
end
