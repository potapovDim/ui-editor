module Fonts
  #css selectors
  @search_input = 'input[placeholder="Search font"]'
  @prev_fonr = '[data-test="prev-font"]'
  @next_fonr = '[data-test="next-font"]'
  @font = '[data-test="font-family-item"]'

  #initialize browser
  @browser
  def self.initBrowser(browser)
    @browser = browser
    return self
  end
end