#for scraping memoize html scrape and Nokogiri doc. Don't have attr_accessor for @html or @doc because they will prevent the bottom from working.
def html
  @html ||= Faraday.get(self.url).body
end

def doc
  @doc ||= Nokogiri::HTML.get(self.html)
end

#nokogiri after doing .css to get a set of elements. Then, to parse it you can use the following methods:  .content > to get :name,  .attr("tag") to get specific selector info

#tip for scraping:  Turn big URLs and regexes into constants.