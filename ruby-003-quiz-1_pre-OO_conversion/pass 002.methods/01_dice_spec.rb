require_relative '../spec_helper'
require_relative './dice.rb' # Code your solution in this file

describe "#roll" do

  it "should return an Integer" do
    expect(roll).to be_a(Integer)
  end

  it "should return a number greater than 0" do
    roll.should be > 0
  end

  it "should return a number less than 7" do
    roll.should be < 7
  end

end