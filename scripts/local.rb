require 'rspec'
require 'watir'

RSpec.configure do |config|
  config.around(:example) do |example|
    @browser = Watir::Browser.new :chrome
    begin
      example.run
    ensure 
      @browser.quit
    end
  end
end
