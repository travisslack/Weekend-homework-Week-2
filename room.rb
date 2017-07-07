class Room

attr_reader :name, :songs, :people

  def initialize(name)
    @name = name
    @songs = []
    @people = []
  end

def add_song_to_room(song)
  return @songs.push(song)
end

def add_guest_to_room(person)
  return @people.push(person)
end

def remove_guest_from_room(person)
  return @people.delete(person)
end

end