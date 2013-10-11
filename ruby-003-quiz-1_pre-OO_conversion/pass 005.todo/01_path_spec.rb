require_relative "../spec_helper"
require_relative "./path.rb" # Code your solution here.

# Code some tests for path.rb.

# There are three methods. Assuming the methods are
# all written correctly:

# The normalize_path method will return an absolute
# path to the file no matter what kind of path sent
# to it.

# The absolute_path? method will return true if the
# path passed to it is absolute.

# The relative_path? method will return true if the 
# path passed to it is relative.

# Write some test that spec it out.

# Use the other tests in this suite to complete this.

# You should should write at least three describe blocks, 
# one for each method.

# Test the negative and positive results, for example,
# when describing absolute_path? make sure to test
# the results when sent a relative and absolute path.


describe '#normalize_path' do
  it "always return an absolute path" do

    normalize_path("file").should eq "#{Dir.pwd}/file"
  end

  it "always return an absolute path" do

    normalize_path("/an/absolute/path/file").should eq "/an/absolute/path/file"
  end


end


describe '#absolute_path?' do
  it "return true if absolute path" do

    absolute_path?("/this/here/").should eq true
  end

  it "return true if relative path" do

    relative_path?("this/here").should eq false
  end

end


describe '#relative_path?' do
  it "return true if relative path" do

    relative_path?("/this/here").should eq false
  end

  it "return true if relative path" do

    relative_path?("this/here").should eq true
  end

end