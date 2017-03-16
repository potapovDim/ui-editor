class Text
  #css selectors
  @@draggable_text = '[data-test="draggable-element-text"]' #draggable decorator selector
  @@extensions_text = '[data-test="extensions-container-none"]'
  
  @@edit_text = '[data-test="context-panel-item"]:nth-child(1)' #open text editor panel (top nav -> text editor panel)
  @@duplicate_text = '[data-test="context-panel-item"]:nth-child(2)' #dublickate text element
  #align
  @@align_left = '[data-test="context-panel-item"]:nth-child(3)' #align text element left
  @@align_center = '[data-test="context-panel-item"]:nth-child(4)' #align text element center
  @@align_right = '[data-test="context-panel-item"]:nth-child(5)' #align text element right
  @@remove_element = '[data-test="context-panel-item"]:nth-child(6)' #remove text element
  #browser instance
  @@browser
  def initialize(browser)
    @@browser = browser
  end
  #methods
  def open_text_context_panel
    @@browser.element(css: @@draggable_text).fire_event "mousedown"
  end
  #right or left or center align
  def change_aligment(position)
    case position 
      when "right"
        @@browser.element(css: @@align_right).fire_event "mousedown"
      when "left"
        @@browser.element(css: @@align_left).fire_event "mousedown"
      else
        @@browser.element(css: @@align_center).fire_event "mousedown"
    end
  end
  #duplicate text element
  def dublicate_text
    @@browser.element(css: @@duplicate_text).fire_event "mousedown"
  end
  #remove text element
  def remove_text
    @@browser.element(css: @@remove_element).fire_event "mousedown"   
  end
end