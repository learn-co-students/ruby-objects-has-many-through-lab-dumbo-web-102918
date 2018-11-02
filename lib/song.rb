
class Song
  @@all = []
  attr_accessor :name, :artist, :genre
  #How would I know from the directions that I am supposed
  # to put these instances under an accessor?


  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end
end
