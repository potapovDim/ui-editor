module MediaGallery
  #initialize browser
  @browser
  def self.initBrowser(browser)
    @browser = browser
    return self
  end
  #tabs 
  @my_images = @browser.div(text: 'My images')
  @free_photos = @browser.div(text: 'Free photos')
  @help = @browser.div(text: 'Help')
  #search input and button
  @search_input = '[placeholder="Search photos"]'
  @search_button = 'button[title="Search"]'
  #image in scroll
  @unsplash_img = '.scrollarea-content.scrollBar__content img'
  #buttons for scroll and add image to own MediaGallery
  @previous = @browser.div(text: 'Previous')
  @add = @browser.div(text: 'Add')
  @next = @browser.div(text: 'Next')
  @uploading = @browser.div(text: 'Uploading')
  @uploaded = @browser.div(text: 'Uploaded')
  #image description fields
  @image_title = 'input#title'
  @description = 'textarea'
  @change_image_button = 'button[title="Change image"]'
  @remove_image = 'button[title="Remove image"]'

end