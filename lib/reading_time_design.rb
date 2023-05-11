def reading_time_design(text)
  words = text.split(" ")
  return(words.length / 200.to_f).ceil
end
  
