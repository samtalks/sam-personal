# Define four methods, greeting, morning?, afternoon?, night?.

# greeting should accept the current hour.
# The greeting method should pass the hour right now to 
# the other three methods and based on their true/false
# response, should give the appropriate greeting for the time
# of day.

# morning: 06 - 11: Good Morning!
# afternoon: 12 - 19: Good Afternoon!
# night: 20 - 05: Good night

# Note we're using military time.

def greeting(hour)
  case hour
  when 06..11 then return "Good Morning!"
  when 12..19 then return "Good Afternoon!"
  when 20..24 then return "Good Night!"
  when 01..05 then return "Good Night!"
  end
end


def morning?(hour)
  true if hour > 5 && hour < 12
end


def afternoon?(hour)
  true if hour > 11 && hour < 20
end

def night?(hour)
  true if hour > 19 || hour < 6
end
