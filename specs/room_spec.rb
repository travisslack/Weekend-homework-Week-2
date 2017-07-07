require('minitest/autorun')
require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../guest.rb')

class TestRoom < Minitest::Test

def setup
  @room1 = Room.new("Room One")
  @room2 = Room.new("Room Two")
# new recognises initiliaze while in brackets is what is equal to the parameter is
  @guest1 = Guest.new("Travis")
  @guest2 = Guest.new("David")
  
  @song1 = Song.new("Just", "Bicep")
  @song2 = Song.new("Its only real", "Denis Sulta")


end

def test_room_has_name
  assert_equal("Room One", @room1.name)
  assert_equal("Room Two", @room2.name)
end

def test_room_has_no_songs
  assert_equal(0, @room1.songs.count)
end

def test_add_song_to_room
  @room1.add_song_to_room(@song1)
  @room1.add_song_to_room(@song2)
# 2 is the amount you want to have when finished, @room1 accesses the file, songs access the parameter that is there, the count counts
  assert_equal(2, @room1.songs.count)
end

def test_room_has_no_guests
  assert_equal(0, @room1.people.count)
end

def test_add_guest_to_room
  @room1.add_guest_to_room(@guest1)
  @room1.add_guest_to_room(@guest2)
  assert_equal(2, @room1.people.count)
end
 
def test_remove_guest_from_room
  @room1.add_guest_to_room(@guest1)
  @room1.add_guest_to_room(@guest2)
  @room1.remove_guest_from_room(@guest2)
  assert_equal(1, @room1.people.count)
end

end
