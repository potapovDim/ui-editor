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
    return self
  end
  #methods
  def self.resize_padding_top_block(x, y, index=0)
    @browser.elements(css: @block_component)[index].hover
    @browser.wait 250
    @browser.elements(css: @padding_top)[index].fire_event "mouseover"  
    @browser.elements(css: @padding_top)[index].drag_and_drop_by x, y
    return self
  end
  def self.resize_padding_bottom_block(x, y, index=0)
    @browser.elements(css: @block_component)[index].hover
    @browser.wait(250)
    @browser.elements(css: @padding_bottom)[index].focus
    @browser.elements(css: @padding_bottom)[index].drag_and_drop_by x, y
    return self
  end
end