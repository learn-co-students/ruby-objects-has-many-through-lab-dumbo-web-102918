require 'pry'
require 'artist.rb'
require 'genre.rb'

class Song

  attr_reader :genre
  attr_accessor :date, :artist

  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@all << self
  end
  #binding.pry

  def self.all
    @@all
  end

end
