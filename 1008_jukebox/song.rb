require_relative './jukebox'

class Song

# info is a string object
  attr_accessor :artist, :title, :info

  def initialize(info)
    @info = info  # Song object with @info only
    self.parse!
  end


  def parse!
    parsed = self.info.split(" - ")
  end




end

