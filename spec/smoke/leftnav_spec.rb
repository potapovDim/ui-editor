require_relative '../../scripts/local'

describe "Leftnav test" do

  before :each do
    @browser.goto 'localhost:8080'
    @browser.window.resize_to 1200, 1600
  end

  it "add new page" do
    page_length_before, new_page = @left_nav
                                    .open_pages()
                                    .create_new_page()
    page_length_after            =  new_page
                                    .enter_page_name('test')
                                    .enter_page_url('test')
                                    .add_page()
    expect(page_length_before != page_length_after ).to be true
  end

  it "delete page" do
    before_pages, after_pages = @left_nav.open_pages()
                                         .delete_page(1)
    puts before_pages, after_pages                 
    expect(before_pages != after_pages ).to be true
  end
end
