def make_snippet(words)
  if words.split.length <= 5
    return words
  else 
    first_five_words = words.split[0,5].join(" ") + "..."
    return first_five_words
  end  
end
