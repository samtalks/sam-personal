# Write a method `count_sentences` that returns the number of
# sentences in the string.

def count_sentences(str)
  arr = str.split("").keep_if{|x| x =~ /[!?.]/}.count
end