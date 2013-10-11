require_relative "./spec_helper"
require_relative "../lib/tv_show"


describe "PirateBay" do
  it 'should have a url' do
    buffy = TVShow.new
    buffy.name = "Buffy the Vampire Slayer"

    buffy.name.should eq("Buffy the Vampire Slayer")
  end
end

