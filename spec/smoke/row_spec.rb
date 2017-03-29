require_relative '../../scripts/local'

describe "Row test" do

  before :each do
    @browser.goto 'localhost:8080'
    @browser.window.resize_to 1200, 1600
  end

  it "change row layout (by select layout)" do
      @row.click_row_context("settings")
          .choose_tab("layout")
          .change_layout(2)
          .change_layout(3)
          .change_layout(4)
          .change_layout(5)
      @browser.send_keys :escape
  end
  it "change row layout (by custom layout)" do
      @row.click_row_context("settings")
          .choose_tab("layout")
          .change_layout(2)
          .create_cutom_layout(100, 1)
          .create_cutom_layout(150, 1)
      @browser.send_keys :escape
  end
end
