require("minitest/autorun")
require('minitest/rg')
require_relative("../bar")

class BarTest < MiniTest::Test

  def setup
    @bar1 = Bar.new("Karaoke Bar")
  end

  def test_bar_has_name
    assert_equal("Karaoke Bar", @bar1.name)
  end

end
