
require 'pry'
class Genre
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end



    def songs
      Song.all {|song_ins| song_ins.genre == self}

    end

  def artists
    songs.collect {|song_ins| song_ins.artist}
    end
    def add_song(song)
      songs << song
    end

  def self.all
    @@all
  end

end
