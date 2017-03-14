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
  def self.change_color (x, y, type="alpha") #change color
    case type
      when "alpha"
        @browser.element(css: @alpha).drag_and_drop_by x, y
      when "hue"  
        @browser.element(css: @hue).drag_and_drop_by x, y
      when "saturation"
        @browser.element(css: @saturation).drag_and_drop_by x, y
    end
  end
end