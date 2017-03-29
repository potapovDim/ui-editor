require_relative "../../share/settings-background-tab"
require_relative "./layout"

module SettingsRow
  include BackgroundTab
  include LayoutTab
  #css selectors
  @background_tab = 'Background'
  @layout_tab = 'Layout'

  #browser instance
  @browser
  def self.initBrowser(browser)
    @browser = browser
    return self
  end
  #background tab api
  def self.choose_tab(tab = "background")
    case tab
      when "background"
        @browser.element(text: @background_tab).click
        return BackgroundTab.initBrowser @browser
      when "layout"
        @browser.element(text: @layout_tab).click
        return LayoutTab.initBrowser @browser
    end
  end
end