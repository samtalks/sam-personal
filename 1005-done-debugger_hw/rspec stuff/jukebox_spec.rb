require_relative './spec_helper.rb'
# require_relative './runner.rb'
require_relative '../jukebox.rb'
# require_relative './song_library.rb'


describe "#test_the_jukebox" do

  it "recognizes invalid song names as invalid" do
    command = "zzyz"
    lib = song_library

    play_song(command, lib).should eq("I did not understand 'zzyz'!

Enter a command to continue. Type 'help' for a list of commands.")
  end


  it "prints hello" do
    hello.should = ("hello")
  end

end


# # below are just some sample tests from other files for reference
#   let (:group_size) { 4 } 
#   let (:students) { get_students } 

#   it "returns an array of groups" do
#     create_groups(students, group_size, 20).class.should eq(Array)
#   end

#   it "sets group sizes to the size given" do
#     create_groups(students, group_size, 20).first.size.should eq(group_size)
#   end

#   it "creates the right number of groups" do
#     pending "implement a test that ensures you get the right number of groups returned"
#   end

#   it "uses every student in the list for a large enough number of groups" do
#     groups = create_groups(students, group_size, 11)
#     students.sort.should eq(groups.flatten.uniq.sort)
#   end

#   it "attempts to randomize the list" do
#     pending "implement a test that ensures that the list order returned is different from the student list"
#     #hint: look at the test: 'it uses every student in the list...'
#   end
# end

#     it "uses some studens more than once for a large enough number of groups" do
#        groups = create_groups(students, group_size, 1000)
#        groups.each do |group|
#          group.size.should eq(group_size)
#        end
#     end

# describe "validate_email" do

#   it "should return true with a valid email" do
#     email = "avi@test.com"

#     validate_email(email).should eq(true)
#   end

#   it "is false without an @ symbol" do
#     email = "avi.com"

#     validate_email(email).should eq(false)
#   end

  # it "is false without a domain" do
  #   email = "avi@"

  #   validate_email(email).should eq(false)
  # end

# end

# END the sample tests above



