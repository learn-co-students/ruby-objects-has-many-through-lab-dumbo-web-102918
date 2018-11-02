class Artist

  attr_accessor :name
  @@all = []

  def initialize(name)
    # @genres = []
    @name = name
    # @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song (name, genre)
    Song.new(name,self,genre)
  end

  def songs
    Song.all.select{|song| song.artist == self}
  end

  def genres
    songs.map {|song| song.genre }
  end

end
