class Artist
  @@all = []
  attr_reader :name
  def self.all
    @@all
  end
  def initialize(name)
    @name = name
    @@all << self
  end
  def new_song(title, genre)
    Song.new(title, self, genre)
  end
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
  def genres
    songs.map do |song|
      song.genre
    end
  end
end
