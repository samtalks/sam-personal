# Create a class that represents a CLI for the Student Site that: 
# CLIStudent.new(students) # Where students are a bunch of student instances.
# CLIStudent.call
# The CLIStudent should have a browse (which lists all students), a help, an exit, and a show (by ID or name), which will show all the data of a student.
require_relative './student.rb'


class CLIStudent
  attr_accessor :students, :id, :name

  APPROVED_CMDS = [:browse, :help, :exit, :show]

  def initialize
    @on = true
    @students = Student.all
  end

  def command(input)
    args = input.split(" ", 2)
    if APPROVED_CMDS.include?(args.first.to_sym)      
      self.send(*args)  # show Edina Vath self.send(:show, "Edina Vath") # self.send("browse")
    else
      puts "Sorry, I didn't understand."
      help
    end
  end

  def call
    while @on
      help
    end
  end

  def browse
    puts "Hi here is a list of all students"
    Student.all.each {|student| puts student.name}
  end

  def help
    puts "Here are the help functions"
    puts "Please type in one of the following:"
    puts "'browse', 'show', 'exit'"
    command(gets.chomp)
  end

  def show(student_name)
    student = Student.find_by_name(student_name).last
    puts "Student Name: #{student.name}"
  end

  def exit
    puts "Goodbye"
    @on = false
  end

end

