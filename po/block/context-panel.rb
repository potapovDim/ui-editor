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
  def self.block_remove
    @browser.element(css: @block_component).hover
    @browser.execute_script("window.scrollBy(0, -500)")
    @browser.wait 250
    @browser.element(css: @remove_block).fire_event "mousemove" #for present context elements
    @browser.element(css: @remove_block).fire_event "mouseover"
    @browser.element(css: @remove_block).click
    return self
  end
  def self.block_duplicate
    @browser.element(css: @block_component).hover
    @browser.execute_script("window.scrollBy(0, -500)")
    @browser.element(css: @duplicate_block).fire_event "mousemove" #for present context elements
    @browser.element(css: @duplicate_block).fire_event "mouseover"
    @browser.element(css: @duplicate_block).click
    return self
  end
  def self.open_block_settings
    @browser.element(css: @block_component).hover
    @browser.execute_script("window.scrollBy(0, -500)")
    @browser.execute_script("window.scrollBy(0, -500)")
    @browser.element(css: @open_settings).hover
    @browser.element(css: @open_settings).fire_event "mouseover"
    @browser.element(css: @open_settings).click
    return Settings.initBrowser @browser
  end
end