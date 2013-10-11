require_relative 'song.rb'

class Jukebox
  attr_accessor :names

  def initializ

  def run
    # starts the player
    start_jukebox
  end

  def start_jukebox
    puts "Welcome what would you like to do"
    list_commands
  end

  def list_commands
    puts "I respond to help"
    get_command
  end
end

