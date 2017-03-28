require_relative '../../scripts/local'

describe "Leftnav test" do

  before :each do
    @browser.goto 'localhost:8080'
    @browser.window.resize_to 1200, 1600
  end

  it 'change text element align' do
    @left_nav.open_pages()
  end
  
end