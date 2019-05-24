require("minitest/autorun")
require('minitest/rg')
require_relative("../song")

class BarTest < MiniTest::Test

  def setup
    @bar1 = Bar.new("Karaoke Bar")
  end

end
