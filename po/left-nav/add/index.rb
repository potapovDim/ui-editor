require_relative "./elements"
require_relative "./built-in-apps"

module Add
  include ElementsPart
  include AppsPart
  #browser instance
  @browser
  def self.initBrowser(browser)
    @browser = browser
    return self
  end
  #api methods
  def self.add_elements
    return ElementsPart.initBrowser @browser
  end

  def self.add_apps
    return AppsPart.initBrowser @browser
  end
end