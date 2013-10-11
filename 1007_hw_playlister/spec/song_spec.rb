require_relative './spec_helper'
require_relative '../lib/song'

describe "Song" do
  it "can initialize a song" do
    Song.new.should be_an_instance_of(Song)
  end

  it "can have a name" do
    Song = Song.new
    Song.name = "Lala"
    Song.name.should eq("Lala")
  end

  it "can have a genre" do
    Song = Song.new
    Song.genre = "Rock"
    Song.genre.should eq("Rock")
  end

  it "has an artist" do
    Song = Song.new
    Song.artist = "who"
    Song.artist.should eq("who")
  end
end
