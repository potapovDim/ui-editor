module MediaGallery
  #css selectors
  @image_title                  = 'input#title'
  @description                  = 'textarea'
  @change_image_button          = 'button[title="Change image"]'
  @remove_image                 = 'button[title="Remove image"]'
  @search_input                 = '[placeholder="Search photos"]'
  @search_button                = 'button[title="Search"]'
  #images collection 
  @unsplash_img                 = '.scrollarea-content.scrollBar__content img'
  #buttons for scroll and add image to own MediaGallery
  #initialize browser
  @browser
  def self.initBrowser(browser)
    @browser = browser
    return self
  end
  #tabs 
  def self.select_tab(tab="my images")
    case tab
      when "my images"
        @browser.div(text: 'My images').click
      when "free fotos"
        @browser.div(text: 'Free photos').click
      when "help"
        @browser.div(text: 'Help').click
    end
    return self
  end
  #search input and button
  # @previous = @browser.div(text: 'Previous')
  # @add = @browser.div(text: 'Add')
  # @next = @browser.div(text: 'Next')
  # @uploading = @browser.div(text: 'Uploading')
  # @uploaded = @browser.div(text: 'Uploaded')
  #image description fields
 

end