require_relative "./create-new-page"

module Pages
  include CreateNewPage
  #pages
  #css selectors
  @page                          = '[data-test="item-node-target"]'
  @page_buttons                  = '[data-test="layout-button"]'
  #initialize browser
  @browser
  def self.initBrowser(browser)
    @browser = browser
    return self
  end
  #api methods
  def self.open_page_settings
    @browser.elements(css: @page_buttons)[0].click
    return self
  end
  def self.dublicate_page
    @browser.elements(css: @page_buttons)[1].click
    return self
  end
  def self.delete_page
    @browser.elements(css: @page_buttons)[2].click
  end

  def self.create_new_page
    @browser.div(text: 'Create new page').click
    return @browser.elements(css: @page).length, CreateNewPage.initBrowser(@browser)
  end
end