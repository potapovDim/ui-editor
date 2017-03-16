require_relative "color-picker"

module BackgroundTab
  include ColorPicker
  #css selectors initial
  @draggable_header       = '[data-test="win-setting-header"]'
  @settings_body          = '[data-test="window-settings-content"]'
  #Open drop down controls
  @drop_list_control      = '.Select-control'
  #Drop down options   
  @drop_list_options      = '.Select-option'
  #open color picker 
  @color_picker           = '[data-test="color-picker-input"]'
  #initialize driver
  @browser
  def self.initBrowser(browser)
    @browser = browser
  end
  #methods
  #change change background type
  def self.change_background_type(type = "none")
    drop_list =  @browser.elements(css: @drop_list_control)
    drop_options = @browser.elements(css: @drop_list_options)
    case type 
      when "none"
        drop_list[0].fire_event "mousedown"
        drop_options[0].fire_event "mousedown"
      when "image"
        drop_list[0].fire_event "mousedown"
        drop_options[1].fire_event "mousedown"
      when "video"
        drop_list[0].fire_event "mousedown"
        drop_options[2].fire_event "mousedown"
      when "color"
        drop_list[0].fire_event "mousedown"
        drop_options[3].fire_event "mousedown"    
      when "gradient"
        drop_list[0].fire_event "mousedown"
        drop_options[4].fire_event "mousedown"    
    end
    return self
  end
  #open color picker 
  def self.open_color_picker (number)
    @browser.elements(css: @color_picker)[number].click
    return ColorPicker.initBrowser @browser
  end
end