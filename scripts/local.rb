require 'rspec'
require 'watir'
require_relative '../po/block/index'
require_relative '../po/elements/button/index'
require_relative '../po/elements/icon/index'
require_relative '../po/elements/image/index'
require_relative '../po/elements/line/index'
require_relative '../po/elements/text/index'

RSpec.configure do |config|
  config.around(:example) do |example|
    @browser = Watir::Browser.new :chrome
    @browser.driver.manage.timeouts.implicit_wait = 150
    #block instance
    @block = Block.new @browser
    #elements instances
    @image = Image.new @browser
    @text = Text.new @browser
    @button = Button.new @browser
    @line = Line.new @browser
    @icon = Icon.new @browser

    begin
      example.run
    ensure 
      @browser.quit
    end
  end
end
