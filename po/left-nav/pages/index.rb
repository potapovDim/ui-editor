require_relative "./create-new-page"

module Pages
  include CreateNewPage
  #pages
  #css selectors
  @pages_open                       = '[data-test="left-nav-button-Pages"]>button'
  @page                             = '[data-test="item-node-target"]'
  @page_button_reomve               = '[data-test="layout-button-remove-page"]'
  @page_button_dublicate            = '[data-test="layout-button-remove-page"]'
  @page_button_settings             = '[data-test="layout-button-remove-page"]'
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
  def self.delete_page(page_number=0)
    page_length_before = @browser.elements(css: @page).length
    @browser.elements(css: @page)[page_number].hover
    @browser.elements(css: @page_button_reomve)[page_number].click
    @browser.element(css: @pages_open).click
    page_length_after = @browser.elements(css: @page).length
    return page_length_before, page_length_after
  end

  def self.create_new_page
    @browser.div(text: 'Create new page').click
    return @browser.elements(css: @page).length, CreateNewPage.initBrowser(@browser)
  end
end