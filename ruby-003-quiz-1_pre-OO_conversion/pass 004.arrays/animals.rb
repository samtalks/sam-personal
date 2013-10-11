# Build a method to sort_animals by whether they live in the sea
# or on land.

# Your method should account for the species in the test suite.

# Return an array that contains two arrays, the first one
# should include the sea creatures, the second, land animals.

# Read the test suite for an example of a nested array.


def sort_animals(animals)
  sea_ref = ["marlin", "octopus", "fish"]
  sorted_list = [[],[]]
  animals.each do |animal|
    sea_ref.include?(animal) ? sorted_list[0]<<animal : sorted_list[1]<<animal
  end
  sorted_list
end
