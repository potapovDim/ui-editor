#context buttons block
module ContextButtons
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
    @browser.element(css: @remove_block).click
  end
  def self.block_duplicate
    @browser.element(css: @duplicate_block).click
  end
  def self.open_block_settings
    @browser.element(css: @open_settings).click
  end
end