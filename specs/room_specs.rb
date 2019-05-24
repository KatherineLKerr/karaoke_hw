require("minitest/autorun")
require('minitest/rg')
require_relative("../room")
require_relative("../guest")
require_relative("../song")

class RoomTest < MiniTest::Test

  def setup
    @room1 = Room.new("firstroom")
    @room2 = Room.new("secondroom")
    @room3 = Room.new("thirdroom")

    @Katherine = Guest.new("Katherine", 40, "firstsong")
    @Cecilia = Guest.new("Cecilia", 50, "firstsong")
    @Ale = Guest.new("ale", 60, "firstsong")
    @Megan = Guest.new("megan", 30, "firstsong")
    @Lewis = Guest.new("lewis", 40, "firstsong")
    @Adam = Guest.new("adam", 50, "firstsong")


    @song1 = Song.new("firstsong")

  end

  def test_room_has_name
    assert_equal("firstroom", @room1.room_name)
  end

  def test_check_in_guest
    @room1.check_in_guest(@Katherine)
    assert_equal([@Katherine], @room1.guests)
  end

  def test_check_out_guest
    @room1.check_in_guest(@Katherine)
    @room1.check_out_guest(@Katherine)
    assert_equal([], @room1.guests)
  end

  def test_add_song
    @room2.add_song(@song1)
    assert_equal([@song1], @room2.playlist)
  end

  def test_room_full
    @room1.check_in_guest(@Katherine)
    @room1.check_in_guest(@Cecilia)
    @room1.check_in_guest(@Ale)
    @room1.check_in_guest(@Megan)
    @room1.check_in_guest(@Lewis)
    assert_equal("Sorry, this room's full!", @room1.check_in_guest(@Adam))
  end

  def test_guest_charged
    @room1.check_in_guest(@Katherine)
    assert_equal(30, @Katherine.wallet)
  end

  def test_guest_cheer
    @room1.check_in_guest(@Katherine)
    @room1.add_song(@song1)
    assert_equal("whoo!",@room1.guest_cheer(@Katherine))
  end

end
