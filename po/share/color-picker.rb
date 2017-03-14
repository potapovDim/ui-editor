#color picker 
module ColorPicker
  #css selectors
  @hue = '[data-test="color-picker-hue"]' #hue line
  @alpha = '[data-test="color-picker-alpha"]' #alpha chanel line
  @saturation = '[data-test="color-picker-saturation"]>div' #saturation area
  #initialize driver
  @browser
  def self.initBrowser(browser)
    @browser = browser
  end
  #methods
  def self.change_alpha (x, y) #change alpha chanel
    @browser.element(css: @alpha).drag_and_drop_by x, y
  end
end