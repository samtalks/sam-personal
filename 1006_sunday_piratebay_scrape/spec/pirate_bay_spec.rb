require_relative "./spec_helper"
require_relative "../lib/pirate_bay"
require_relative "faraday"


describe "PirateBay" do
  let(:tv_show) {PirateBay.new}   # shortcut that obviates need to insert "tv_show = PirateBay.new" as a line at start of each line of "it" tests below. This is needed to create an instance for each test 
  
  it 'should have a url' do
    tv_show = PirateBay.new
    tv_show.url = "http://thepiratebay.se"

    tv_show.url.should eq("http://thepiratebay.se")
  end

  it 'should default to the top 100 tv shows as the url' do
    tv_show = PirateBay.new

    tv_show.url.should eq(PirateBay::TOP100Shows)  # constant from PirateBay
  end

  context 'scraping torrents' do
    it 'respond to a scrape method' do
      tv_show.should respond_to(:scrape)
  #    tv_show.respond_to?(:scrape).should eq(true)  # same as above line
    end

    it 'should open the url and read HTML' do
      tv_show = PirateBay.new

      tv_show.html.should include?("html")
    end

    it 'should have a nokogiri doc' do
      
    end

  end

  it 'should load a list of torrents' do
    tv_show.torrents.should be_a(Array)
  end

  it 'should parse those torrents for tv show names' do
  end

  it 'should create an instance of a tv show for ever' do
  end

end