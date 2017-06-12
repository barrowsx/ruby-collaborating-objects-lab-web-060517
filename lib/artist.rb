require 'pry'

class Artist

  @@all = []
  @songs = []
  attr_accessor :name

  def initialize(name)
    @@all = []
    @@all << self
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def all
    @@all
  end

  def songs
    @songs
  end

  def add_song(song)
    #binding.pry
    @songs << song
  end

  def save
    #binding.pry
    self.all << self
  end

  def self.find_or_create_by_name(artist_name)

    if self.all.find { |artist| artist.name == artist_name }
      self.all.find { |artist| artist.name == artist_name }
    else
      artist = Artist.new(artist_name)
      artist.save
      artist
    end
  end

  def print_songs
    songs.each do |song|
      puts song.name
    end
  end
end
