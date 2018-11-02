require 'pry'
class Artist
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end
  def songs
    Song.all.select {|song_ins| song_ins.artist == self}
  end
  def genres
    songs.collect {|song_ins| song_ins.genre}
    end

  def self.all
    @@all
  end

end
