require_relative "context-panel"

class Row
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
  def click_row_context (button, index = 0)
    case button
      when "remove"
        ContextPanel.row_remove(index)
      when "duplicate"
        ContextPanel.row_duplicate(index)
      when "settings"
        ContextPanel.open_row_settings(index)
        return Settings.initBrowser @@browser
    end
  end
end
