require_relative "../spec_helper"
require_relative "./mark_odds.rb" # Code your solution here.

describe "#mark_odds" do
  
  it "should replace odd numbers with true" do
    mark_odds([3]).first.should eq(true)
  end

  it "should replace even numbers with false" do
    mark_odds([2]).first.should eq(false)
  end

  it 'should work with mixed arrays' do
    mark_odds([2,3]).should eq([false, true])
  end

end
