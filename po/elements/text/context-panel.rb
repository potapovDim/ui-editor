module TextContextPanel
  #css selectors 
  #text element
  @text_element = '[data-test="draggable-element-text"]'
  #context panel item selector
  @context_panel_item = '[data-test="context-panel-item"]'
  #browser instance
  @browser
  def self.initBrowser(browser)
    @browser = browser
  end
  #methods
  def self.focused_element
    @browser.element(css: @text_element).fire_event "mousedown"
  end
  def self.click_context_item(item="align center") #item in context panel text element
    items = @browser.elements(css: @context_panel_item)
    case item
      when "edit text"
        items[0].click
      when "duplicate"
        items[1].click
      when "align left"
        items[2].click
      when "align center"
        items[3].click
      when "align right"
        items[4].click
      when "remove"
        items[5].click
    end
  end
end
