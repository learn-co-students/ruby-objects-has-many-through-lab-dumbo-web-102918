require "pry"

class Artist

  @@all = []
attr_accessor :name

def initialize(name)
@name = name
@@all << self

end
def self.all
  @@all
end

def new_song(name, genre)
  Song.new(name, self, genre)
 #binding.pry
end

def songs
Song.all.select do |song|
  song.artist == self
end
end

def genres
genre_list = []
songs.select do |genre|
genre_list << genre.genre
end
genre_list
end



end
