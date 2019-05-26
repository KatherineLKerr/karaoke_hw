class Room

  attr_reader :room_name, :guests, :playlist, :guest_spending

  def initialize(room_name, fee)
    @room_name = room_name
    @fee = fee
    @guests = []
    @playlist = []
    @guest_spending = 0
  end

  def check_in_guest(guest)
    if @guests.length < 5
      @guests << guest
      guest.wallet -= @fee
      @guest_spending += @fee
    else
      return "Sorry, this room's full!"
    end
  end

  def guest_cheer(guest)
    for song in @playlist
      if song.song_title == guest.favourite_song
        return "whoo!"
      else
        return "i dont like this song"
      end
    end
  end

  def check_out_guest(guest)
    @guests.delete(guest)
    return @guests
  end

  def add_song(song)
    @playlist << song
  end

end
