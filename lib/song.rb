require 'pry'

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(path)
    song_name = nil
    artist_name = nil
    path.slice!('.mp3')
    path_array = path.split(' - ')
    artist_name = path_array[0]
    song_name = path_array[1]
    new_artist = Artist.find_or_create_by_name(artist_name)
    new_artist.add_song(song_name)
    new_artist.save
    new_song = Song.new(song_name)
    new_song.artist = new_artist
    new_song
    #binding.pry
  end

end
