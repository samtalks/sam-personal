# Define a method that marks whether a number in an array is true or false.
# It should return a new array with just true and false as members.

def mark_odds(numbers)
  arr = []
  numbers.each do |number|
    number % 2 == 1 ? arr << true : arr << false
  end
  arr
end


/ if number.even?   <<< faster