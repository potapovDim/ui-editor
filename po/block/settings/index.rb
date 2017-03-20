require_relative "../../share/settings-background-tab"
require_relative "./settings-appearance-tab.rb"

module Settings
  include BackgroundTab
  include AppearanceTab
  #css selectors
  @background_tab = 'Backgrount'
  @appearance_tab = 'Appearance'

  #browser instance
  @browser
  def self.initBrowser(browser)
    @browser = browser
    return self
  end
  #background tab api
  def choose_tab(tab = "background")
    case tab
      when "background"
        @browser.element(text: @background_tab).click
        return BackgroundTab.initBrowser @browser
      when "appearance"
        @browser.element(text: @appearance_tab).click
        return AppearanceTab.initBrowser @browser
    end
  end
end