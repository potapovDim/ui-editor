class PaddingsPO
  @@browser
  def initialize(browser)
    @@browser = browser
  end
  @@padding_top = '[data-test="block-padding-top"]'
  @@padding_bottom = '[data-test="block-padding-bottom"]'
  def resize_padding_top_block(x, y)
    @@browser.element(css: @@padding_top).hover
    @@browser.wait(1500)
    @@browser.element(css:  @@padding_top).drag_and_drop_by x, y
  end
  def resize_padding_bottom_block(x, y) 
    @@browser.element(css: @@padding_bottom).hover
    @@browser.wait(1500)
    @@browser.element(css:  @@padding_bottom).drag_and_drop_by x, y
  end
end