require 'nokogiri'
require 'open-uri'
require 'sqlite3'
require 'pry'
require_relative './student'
require_relative './CLI_student'

class StudentScraper
  attr_accessor :index_doc

  FLATIRON_STUDENTS_URL = "http://students.flatironschool.com"

  def import_student_profiles
    db = SQLite3::Database.new("flatiron.db")
    student_profiles = scrape_student_profiles
   
    create_student_profile_table(db)
   
    student_profiles.each do |student_profile|
      write_student_profile(db, student_profile)
    end
  end
   
  def scrape_student_profiles
    self.index_doc = Nokogiri::HTML(open(students_index_url))
   
    student_urls = parse_student_urls
   
    student_urls.map do |url|
      scrape_student_profile_at(url)
    end
  end
   
  def scrape_student_profile_at(url)
    begin
      response = open(url)
      student_doc = Nokogiri::HTML(response)
    rescue OpenURI::HTTPError => e
      return profile_meta_hash(url, e.io.status[0])
    end
   
    {
      meta: profile_meta_hash(url, response.status[0]),
      student: {
        name: parse_student_name(student_doc),
        tagline: parse_tagline(student_doc),
        biography: parse_biography(student_doc),
        education: parse_education(student_doc),
        profile_image_src: parse_profile_picture_url(student_doc, students_index_url),
        social: {
          facebook_url: parse_facebook_url(student_doc),
          github_url: parse_github_url(student_doc),
          linked_in_url: parse_linked_in_url(student_doc),
          twitter_url: parse_twitter_url(student_doc),
          rss_url: parse_rss_url(student_doc),
        }
    }}
  end
   
  def profile_meta_hash(url, status)
    { url: url, status: status }
  end
   
  def create_student_profile_table(db)
    create_table(db) unless table_exists?(db, 'student_profiles')
  end
   
  def write_student_profile(db, student_profile)
    student = student_profile[:student]
   
    return unless student
   
    name              = student[:name]
    tagline           = student[:tagline]
    biography         = student[:biography]
    education         = student[:education].join(',')
    profile_image_src = student[:profile_image_src]
    facebook_url      = student[:social][:facebook_url]
    github_url        = student[:social][:github_url]
    linked_in_url     = student[:social][:linked_in_url]
    twitter_url       = student[:social][:twitter_url]
    rss_url           = student[:social][:rss_url]
   
    db.execute("INSERT INTO student_profiles VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ? )",
               name,
               tagline,
               biography,
               education,
               profile_image_src,
               facebook_url,
               github_url,
               linked_in_url,
               twitter_url,
               rss_url)
  end
   
  def create_table(db)
    db.execute("CREATE TABLE student_profiles (
                name TEXT,
                tagline TEXT,
                biography TEXT,
                education TEXT,
                profile_image_src TEXT,
                facebook_url TEXT,
                github_url TEXT,
                linked_in_url TEXT,
                twitter_url TEXT,
                rss_url TEXT
               );
    ")
  end
   
  def table_exists?(db, table_name)
    tables = db.execute("SELECT name FROM sqlite_master WHERE type='table' AND name=?", table_name)
    tables.any?
  end
   
  def students_index_url
    FLATIRON_STUDENTS_URL
  end
      
  def parse_student_name(doc)
    doc.css('.ib_main_header').text
  end
   
  def parse_social_url_from_icon_selector(doc, selector)
    icon   = doc.css(selector).first
    parent = icon.parent if icon
    href   = parent.attribute('href') if parent
   
    href.text if href
  end
   
  def parse_github_url(doc)
    parse_social_url_from_icon_selector(doc, '.icon-github')
  end
   
  def parse_twitter_url(doc)
    parse_social_url_from_icon_selector(doc, '.icon-twitter')
  end
   
  def parse_linked_in_url(doc)
    parse_social_url_from_icon_selector(doc, '.icon-linkedin-sign')
  end
   
  def parse_facebook_url(doc)
    parse_social_url_from_icon_selector(doc, '.icon-facebook')
  end
   
  def parse_rss_url(doc)
    parse_social_url_from_icon_selector(doc, '.icon-rss')
  end
   
  def parse_tagline(doc)
    doc.css('.textwidget h3').text
  end
   
  def parse_student_urls
    self.index_doc.css('.home-blog-post .blog-title a').map { |el| "#{students_index_url}/#{el.attribute('href').value }" }
  end
   
  def parse_education(doc)
    h3 = doc.at('.services-title h3:contains("Education")')
   
    h3.parent.parent.css('ul li').map { |li| li.text } if h3
  end
   
  def parse_biography(doc)
    h3 = doc.at('.services-title h3:contains("Biography")')
   
    h3.parent.parent.css('p').text.strip if h3
  end
   
  def parse_profile_picture_url(doc, url)
    path = doc.css('.student_pic').attribute('src').text
    "#{url}/#{path}" if url
  end



  def build_students
    student_hashes = self.stubbed_student_profiles

    student_hashes.map do |student_hash|
      Student.new_from_hash(student_hash)
    end
    
  end

end

