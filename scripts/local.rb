require 'rspec'
require 'watir'
#block
require_relative '../po/block/index'
#elements
require_relative '../po/elements/button/index'
require_relative '../po/elements/icon/index'
require_relative '../po/elements/image/index'
require_relative '../po/elements/line/index'
require_relative '../po/elements/text/index'
#left nav
require_relative '../po/left-nav/index'
#row
require_relative '../po/row/index'

RSpec.configure do |config|
  config.around(:example) do |example|
    @browser              = Watir::Browser.new :chrome
    #block instance
    @block                = Block.new @browser
    #elements instances
    @image                = Image.new @browser
    @text                 = Text.new @browser
    @button               = Button.new @browser
    @line                 = Line.new @browser
    @icon                 = Icon.new @browser
    #leftnav instance
    @left_nav             = LeftNav.new @browser
    #row 
    @row                  = Row.new @browser
    
    begin
      @browser.driver.manage.timeouts.implicit_wait = 150
      example.run
    ensure 
      @browser.quit
    end
  end
end
