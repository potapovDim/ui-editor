require_relative '../../scripts/local.rb'

describe "Button element" do

  before :each do
    @browser.goto 'localhost:8080'
    @browser.window.resize_to 1200, 1600
  end

  it "change text element align" do
    @button.focus_element()
    @button.context_panel_action("align center")
        .click_context_item("align left")
        .click_context_item("align right")
        .click_context_item("align left")
        .click_context_item("align center")
        #.click_context_item("remove")
  end

  # after :all do
  #   browser.quit
  # end
end
