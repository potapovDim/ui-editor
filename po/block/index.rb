require_relative "paddings"
require_relative "context-panel"
require_relative "../share/color-picker"
require_relative "../share/settings-background-tab"

class Block
  include PaddingsBlock
  include ContextButtons
  include BackgroundTab
  include ColorPicker
  #initialize drivers
  def initialize(browser)
    ContextButtons.initBrowser browser
    PaddingsBlock.initBrowser browser
    BackgroundTab.initBrowser browser
    ColorPicker.initBrowser browser
  end
  #paddings api
  def resize_padding(x, y, padding="bottom")
    case padding 
      when "top"
        PaddingsBlock.resize_padding_top_block  x, y
      when "bottom"
        PaddingsBlock.resize_padding_bottom_block  x, y
    end
  end
  #clock context panel api
  def click_block_context (button)
    case button
      when "remove"
        ContextButtons.block_remove
      when "duplicate"
        ContextButtons.block_duplicate
      when "settings"
        ContextButtons.open_block_settings
    end
  end
  #block settings api
  def change_block_background(back_type = "none")
    BackgroundTab.change_background_type back_type
  end
  #color picker api
  def open_color_picker (color_picker_number=0)
    BackgroundTab.open_color_picker color_picker_number
  end
  #change background color
  # def change_background_color(x, y, type="alpha")
  #   ColorPicker.change_color x, y, type
  # end 
end
