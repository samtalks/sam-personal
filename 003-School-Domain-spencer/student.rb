require 'sqlite3'
require 'pry'


class Student
  attr_accessor :name, :twitter_url, :linked_in_url, :rss_url, :github_url, :facebook_url, :website, :tagline, :biography, :education, :profile_image_src
  attr_reader :id

  STUDENTS = []

  def initialize()
    STUDENTS << self
    @id = STUDENTS.count
  end

  def self.new_from_hash(properties)
    s = Student.new
    
    s.name              = properties[:student][:name]
    s.tagline           = properties[:student][:tagline]
    s.biography         = properties[:student][:biography]
    s.education         = properties[:student][:education].join(',')
    s.profile_image_src = properties[:student][:profile_image_src]
    s.facebook_url      = properties[:student][:social][:facebook_url]
    s.github_url        = properties[:student][:social][:github_url]
    s.linked_in_url     = properties[:student][:social][:linked_in_url]
    s.twitter_url       = properties[:student][:social][:twitter_url]
    s.rss_url           = properties[:student][:social][:rss_url]
    
    s
  end


  def self.all
    STUDENTS
  end

  def self.reset_all
    STUDENTS.clear
  end

  def self.find_by_name(name)
    STUDENTS.select {|student| student.name == name}
  end

  def self.find(id)
    STUDENTS.detect {|student| student.id == id}
  end

  def self.delete(id)
    STUDENTS.reject! {|student| student.id == id}   
  end

end