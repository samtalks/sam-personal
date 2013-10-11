require_relative './genre'
require_relative './song'

class Artist
  attr_accessor :name, :songs, :genres

  def initialize
    @songs = []
  end

  def add_song(song)
    self.songs << song
  end
  
  def genres
    ################
  end

end

