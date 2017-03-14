require_relative "paddings"
require_relative "context-panel"

class Block
  include PaddingsBlock
  include ContextButtons
  #initialize drivers
  def initialize(browser)
    ContextButtons.initBrowser browser
    PaddingsBlock.initBrowser browser
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
end
