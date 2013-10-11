require 'nokogiri'
require 'Faraday'

class PirateBay
  attr_accessor :url
  TOP100Shows = 'http://thepiratebay.sx/top/205'

  def initialize(url = TOP100Shows)
    @url = url
  end

  def scrape
    # open the url
    open_url
    load_nokogiri_doc

    # create nokogiri doc from html
    # start the scrape
  end

  def open_url
    self.html ||= Faraday.get(self.url).body
  end

  def html
    @html     self.html ||= Faraday.get(self.url).body
  end


end