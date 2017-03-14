require_relative "paddings"
require_relative "context-panel"
require_relative "block-settings"

class Block
  include PaddingsBlock
  include ContextButtons
  include BlockSettings
  #initialize drivers
  def initialize(browser)
    ContextButtons.initBrowser browser
    PaddingsBlock.initBrowser browser
    BlockSettings.initBrowser browser
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
    BlockSettings.change_background_type back_type
  end
end
