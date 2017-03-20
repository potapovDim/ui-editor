require_relative "paddings"
require_relative "context-panel"

class Block
  include PaddingsBlock
  include ContextButtons
  #initialize drivers
  @@browser
  def initialize(browser)
    @@browser = browser
  end
  #paddings api
  def resize_padding()
    return PaddingsBlock.initBrowser @@browser
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
        return Settings.initBrowser @@browser
    end
  end
  #block settings api
end
