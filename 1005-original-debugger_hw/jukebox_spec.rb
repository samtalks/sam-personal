require_relative '../spec_helper'
require_relative './jukebox.rb'

describe "#___enter_text_here___" do
  # about the test....


# below are just some sample tests from other files for reference
  let (:group_size) { 4 } 
  let (:students) { get_students } 

  it "returns an array of groups" do
    create_groups(students, group_size, 20).class.should eq(Array)
  end

  it "sets group sizes to the size given" do
    create_groups(students, group_size, 20).first.size.should eq(group_size)
  end

  it "creates the right number of groups" do
    pending "implement a test that ensures you get the right number of groups returned"
  end

  it "uses every student in the list for a large enough number of groups" do
    groups = create_groups(students, group_size, 11)
    students.sort.should eq(groups.flatten.uniq.sort)
  end

  it "attempts to randomize the list" do
    pending "implement a test that ensures that the list order returned is different from the student list"
    #hint: look at the test: 'it uses every student in the list...'
  end
end

    it "uses some studens more than once for a large enough number of groups" do
       groups = create_groups(students, group_size, 1000)
       groups.each do |group|
         group.size.should eq(group_size)
       end
    end

    it "doesn't repeat students on adjacent days" do
      groups = create_groups(students, group_size, 20)
      groups.each_with_index do |group, i|
        (group & groups[i+1]).should eq([]) if i < groups.size - 1

describe "validate_email" do
  it "should return true with a valid email" do
    email = "avi@test.com"

    validate_email(email).should eq(true)
  end

  it "is false without an @ symbol" do
    email = "avi.com"

    validate_email(email).should eq(false)
  end

  it "is false without a domain" do
    email = "avi@"

    validate_email(email).should eq(false)
  end

end

# END the sample tests above