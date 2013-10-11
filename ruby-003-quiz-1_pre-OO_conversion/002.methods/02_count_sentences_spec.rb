require_relative '../spec_helper'
require_relative './count_sentences.rb' # Code your solution in this file

describe "#count_sentences" do

  it  "should return the number of sentences in a string" do
    count_sentences("one. two. three?").should eq(3)
  end

  it "should return zero if there are no sentences in a string" do
    count_sentences("").should eq(0)
  end

end