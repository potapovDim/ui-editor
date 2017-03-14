#block paddings
module PaddingsBlock
  #css selectors 
  @block_component = '[data-test="block-component"]'
  #paddings
  @padding_top = '[data-test="block-padding-top"]'
  @padding_bottom = '[data-test="block-padding-bottom"]'
  #browser instance
  @browser
  def self.initBrowser(browser)
    @browser = browser
  end
  #methods
  def self.resize_padding_top_block(x, y)
    @browser.element(css: @block_component).hover
    @browser.wait 250
    @browser.element(css: @padding_top).fire_event "mousemove"
    @browser.element(css: @padding_top).fire_event "mouseover"  
    @browser.element(css: @padding_top).drag_and_drop_by x, y
  end
  def self.resize_padding_bottom_block(x, y)
    @browser.element(css: @block_component).hover
    @browser.wait(250)
    @browser.element(css: @padding_bottom).fire_event "mousemove"
    @browser.element(css: @padding_bottom).fire_event "mouseover"  
    @browser.element(css: @padding_bottom).focus
    @browser.element(css: @padding_bottom).drag_and_drop_by x, y
  end
end