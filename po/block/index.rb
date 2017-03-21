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
  def click_block_context (button)
    case button
      when "remove"
        ContextPanel.block_remove
      when "duplicate"
        ContextPanel.block_duplicate
      when "settings"
        ContextPanel.open_block_settings
        return Settings.initBrowser @@browser
    end
  end
  #block settings api
end
