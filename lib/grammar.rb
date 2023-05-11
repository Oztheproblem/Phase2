
def grammar(str)
  fail "Not a sentence." if str.strip.empty?
  first_letter_up = str[0] == str[0].upcase
  last_character_valid = [".", "!", "?"].include? str[-1]
  if first_letter_up && last_character_valid
    return true
  else
    return false
  end
end
