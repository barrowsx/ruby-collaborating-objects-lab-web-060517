require 'pry'

class MP3Importer

  attr_reader :path, :files

  def initialize(path)
    @path = path
    @files = []
  end

  def files
     @files = Dir[@path+'/*']
     @files.map! {|file| file.gsub(@path+'/','')}
  end

  def import
    self.files
    @files.each do |song|
      canta = Song.new_by_filename(song)
    end
  end

end
