require("minitest/autorun")
require('minitest/rg')
require_relative("../song")

class SongTest < MiniTest::Test

  def setup
    @song1 = Song.new("firstsong")
  end

  def test_song_has_name
    assert_equal("firstsong", @song1.song_title)
  end

end
