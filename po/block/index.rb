require_relative "paddings"
require_relative "context-panel"

class Block
  include PaddingsBlock
  include ContextPanel
  #initialize drivers
  @@browser
  def initialize(browser)
    @@browser = browser
    ContextPanel.initBrowser browser
  end
  #paddings api
  def resize_padding()
    return PaddingsBlock.initBrowser @@browser
  end
  #block context panel api
  def click_block_context (button, index = 0)
    case button
      when "remove"
        ContextPanel.block_remove(index)
      when "duplicate"
        ContextPanel.block_duplicate(index)
      when "settings"
        ContextPanel.open_block_settings(index)
        return Settings.initBrowser @@browser
    end
  end
end
