# Build a method email_parser that can accept a string of emails
# and separate them into unique email addresses. The delimiters
# to support are commas (',') and spaces (' ').

# Hint: Look into the Array ruby documentation for a method that
# might help you find unique elements in an Array.

def email_parser(str) 
  str.gsub(/, /," ").gsub(/,/," ").split.uniq
end

# INTERESTING NOTE: Changing uniq to uniq! makes tests fail. WHY??
# Due to "tainting" you can't chain dangerous methods on tainted data. Gsub! did not work with this due to this reason. Also uniq! causes problems. see here
# http://stackoverflow.com/questions/12165664/what-are-the-rubys-objecttaint-and-objecttrust-methods