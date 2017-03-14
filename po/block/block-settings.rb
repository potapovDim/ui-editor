module BlockSettings
  #css selectors initial
  @draggable_header = '[data-test="win-setting-header"]'
  @settings_body = '[data-test="window-settings-content"]'
  #Open drop down controls
  @drop_list_control = '.Select-control'
  #Drop down options   
  @drop_list_options = '.Select-option'
  #initialize driver
  @browser
  def self.initBrowser(browser)
    @browser = browser
  end
  #methods
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
    end
  end
end