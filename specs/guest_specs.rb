require("minitest/autorun")
require('minitest/rg')
require_relative("../guest")

class GuestTest < MiniTest::Test

  def setup
      @Katherine = Guest.new("Katherine", 40, "firstsong")
      @Cecilia = Guest.new("Cecilia", 50, "firstsong")
      @Ale = Guest.new("ale", 60, "firstsong")
      @Megan = Guest.new("megan", 30, "firstsong")
      @Lewis = Guest.new("lewis", 40, "firstsong")
      @Adam = Guest.new("adam", 50, "firstsong")
  end

  def test_guest_has_name
    assert_equal("Katherine", @Katherine.name)
  end

  def test_guest_has_wallet
    assert_equal(60, @Ale.wallet)
  end

  def test_guest_has_favourite_song
    assert_equal("firstsong", @Katherine.favourite_song)
  end

end
