#Write a method called is_a_teenager? that takes age as a parameter and returns
#true/false depending on whether the age indicates that the person is a 
#teenager

def is_a_teenager?(age)
  age > 19 || age < 13 ? false : true
end

