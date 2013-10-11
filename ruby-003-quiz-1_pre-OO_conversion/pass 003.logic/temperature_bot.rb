# Temperature bot is comfortable when it's room temperature.
# Figure out what the range for room temperature is based on
# the spec. Additionally, try to use ranges or a case statement.

def temperature_bot(temp)
  case temp
  when 0..17 then return "cold"
  when 18..21 then return "comfortable" 
  when 22..100 then return "hot"
  end    
end