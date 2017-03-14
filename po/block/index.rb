require_relative "paddings"

class Block
  include PaddingsBlock
  def initialize(browser)
    PaddingsBlock.initBrowser browser
  end
  def resize_padding(x, y, padding="bottom")
    case padding 
      when "top"
        PaddingsBlock.resize_padding_top_block  x, y
      when "bottom"
        PaddingsBlock.resize_padding_bottom_block  x, y
    end
  end
end
