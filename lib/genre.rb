class Genre

  attr_accessor :name
@@all = []
  def initialize(name)
    @name = name
    @@all << self
end

def self.all
  @@all
end

def songs
Song.all.select do |song|
  song.genre == self
end
end

def artists
artist_list = []
songs.select do |artist|
artist_list << artist.artist
end
artist_list
end

end
