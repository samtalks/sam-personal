require_relative '../spec_helper'
require_relative './email_parser.rb' # Code your solution in this file

describe '#email_parser' do
  it "parses CSV emails" do
    emails = "avi@test.com, bob@test.com"

    email_parser(emails).should == ["avi@test.com", "bob@test.com"]
  end

  it "parses space delimited emails" do
    emails = "avi@test.com bob@test.com"

    email_parser(emails).should == ["avi@test.com", "bob@test.com"]
  end

  it "parses both CSV and spac delimited emails" do
    emails = "avi@test.com, bob@test.com test@avi.com, test@bob.com"

    email_parser(emails).should == ["avi@test.com", "bob@test.com","test@avi.com", "test@bob.com"] 
  end

  it 'parses and removes duplicate emails' do
    emails = "avi@test.com, avi@test.com"
    
    email_parser(emails).should == ["avi@test.com"]
  end

end
