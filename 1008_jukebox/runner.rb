require 'pry'
require_relative './jukebox'
require_relative './song'


  songs = [
    "The Phoenix - 1901",
    "Tokyo Police Club - Wait Up",
    "Sufjan Stevens - Too Much",
    "The Naked and the Famous - Young Blood",
    "(Far From) Home - Tiga",
    "The Cults - Abducted",
    "The Phoenix - Consolation Prizes"
  ]


  j = Jukebox.new(songs)

  j.run

  binding.pry