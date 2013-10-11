# Write a model that stores students along with the grade that they are in.
# school = School.new("Bayside High School")
# If no students have been added, the roster should be empty:
# school.roster # => {}
# When you add a student, they get added to the correct grade.
# school.add_student("Zach Morris", 9)
# school.roster
# # => {9 => ["Zach Morris"]}
# You can, of course, add several students to the same grade, and students to different grades.
# school.add_student("AC Slater", 9)
# school.add_student("Kelly Kapowski", 10)
# school.add_student("Screech", 11)
# school.roster
# # => {9 => ["Zach Morris", "AC Slater"], 10 => ["Kelly Kapowski"], 11 => ["Screech"]}
# Also, you can ask for all the students in a single grade:
# school.grade(9)
# # => ["Zach Morris", "AC Slater"]
# Lastly, you should be able to get a sorted list of all the students. Grades are sorted in descending order numerically, and the students within them are sorted in ascending order alphabetically.
# school.sort
# # => {9 => ["AC Slater", "Zach Morris"], 10 => ["Kelly Kapowski"], 11 => ["Screech"]}

class School
  attr_accessor :roster

  def initialize(school)
    @roster = {}
  end

  def add_student(name, grade)
      @roster[grade] ||= []
      @roster[grade] << name
  end

  # def add_student(name, grade)
  #   if @roster.keys.include?(grade)
  #     @roster[grade] << name
  #   else
  #     @roster[grade] = [name]
  #   end
  # end

  def grade(num)
    @roster[num]
  end

  def sort
    @roster.each {|k,v| @roster[k] = @roster[k].sort}
    @roster
  end

end
