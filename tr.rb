require './scripts/local'

describe "Block component" do
  before :each do
    @browser.window.resize_to 1200, 1600
    @browser.goto 'localhost:8080'
  end
  
  # it "change block top padding" do #change top paddin of block element   
  #   @block.resize_padding()
  #         .resize_padding_top_block(10, -10)
  #   @browser.wait 500
  # end

  # it "change block bottom padding" do #change bottom paddin block element 
  #   @block.resize_padding()
  #        .resize_padding_bottom_block(10, -10)
  #   @browser.wait 500
  # end

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
end
