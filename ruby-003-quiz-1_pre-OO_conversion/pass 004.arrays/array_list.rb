# Create a method on array called `make_list` that iterates over the array it is
# called on and appends a number, a period, and a space to each element.

# e.g ["ich", "ni", "san"].make_list #=> ["1. ich", "2. ni", "3. san"]

class Array

  # Define your list method here.

  # Hint: remember that self is a way to refer to the Array itself.
  # Look at is_between.rb file for a reminder on how you might use
  # self.
  def make_list
    self.map {|item| (self.index(item).+1).to_s + ". "+ item}
  end

end

# Need to add parentheses around self.index(item).+1 to prevent error: String can't be coerced into Fixnum.  It appears method operations do not always happen from left to right cumulatively. Parenthese are needed at times. Not sure when.