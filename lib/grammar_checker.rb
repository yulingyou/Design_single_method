def grammar_checker(string)
  first_letter_is_capitalize = string[0] == string[0].capitalize
  last_char_is_valid = [".","!","?"].include? string[-1]
  if first_letter_is_capitalize && last_char_is_valid
    return true
  else
    return false
  end
end