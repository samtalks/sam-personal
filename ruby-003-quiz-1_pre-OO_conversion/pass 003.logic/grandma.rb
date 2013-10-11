# Write a speak_to_grandma method.

# Whatever you say to grandma, she should return/respond with
# HUH?!  SPEAK UP, SONNY!
# unless you shout it (type in all capitals).

# If you shout, she can hear you (or at least she thinks so) 
# and return/yells back

# NO, NOT SINCE 1938!

def speak_to_grandma(thing_said)
  return thing_said==thing_said.upcase ? "NO, NOT SINCE 1938!" : "HUH?!  SPEAK UP, SONNY!"
end
