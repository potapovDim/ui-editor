require_relative "./settings/index"
#context buttons block
module ContextPanel
  include Settings
  #css selectors
  @block_component = '[data-test="block-component"]'
  @open_settings = '[data-test="edit-button"]'
  @duplicate_block = '[data-test="context-panel-button-dublicate"]'
  @remove_block = '[data-test="context-panel-button-remove"]'
  #browser instance
  @browser
  def self.initBrowser(browser)
    @browser = browser
  end
  def self.helper_contextpanel(index)
    @browser.execute_script("window.scrollBy(0, -100)")
    if @browser.elements(css: @open_settings)[index].present?
      return true
    end
  end
  def self.block_remove(index)
    @browser.elements(css: @block_component)[index].hover
    @browser.wait_until {self.helper_contextpanel(index)}
    @browser.elements(css: @remove_block)[index].click
    return self
  end
  def self.block_duplicate(index)
    @browser.elements(css: @block_component)[index].hover
    @browser.wait_until {self.helper_contextpanel(index)}
    @browser.elements(css: @duplicate_block)[index].click
    return self
  end
  def self.open_block_settings (index)
    @browser.elements(css: @block_component)[index].hover
    @browser.wait_until {self.helper_contextpanel(index)}
    @browser.elements(css: @open_settings)[index].click
    return Settings.initBrowser @browser
  end
end