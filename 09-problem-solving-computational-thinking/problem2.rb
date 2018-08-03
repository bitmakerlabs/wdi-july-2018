# Problem: Pig Latin
# Pig Latin
 # "apple" => "appleay"
 # "plum" => "umplay"
 # lump
 # umpl
 # umplay
 # grape => apegray
 # Natalie => atalieNay
 # "squeeze" => "eezesquay"

# check the first letters to see if they're vowels/consonants
# if it's a vowel, follow vowel approach:
  # add ay
# otherwise follow consonant approach:
  # take first consonants to end and then add "ay"


# english_word = get_user_input
puts "Enter word:"
english_word = gets.chomp.to_s

# (boolean) define is_vowel?(letter)
  # if letter == 'a' or letter == 'e' or letter == 'i' or letter == 'o' or letter == 'u'
  #  return true
  # else
  #  return false
# end

def is_vowel?(letter)
  letter = letter.downcase
  if letter == 'a' || letter == 'e' || letter == 'i' || letter == 'o' || letter == 'u'
    return true
  else
    return false
  end
end


# define create_pig_latin(english_word)
  # until letter of english_word is_vowel?(letter)
    # english_word.place_at_end(letter)
  # end

  # pig_latin_word = english_word.add "ay"

  # return pig_latin_word
# end

def create_pig_latin(english_word)
  letters = english_word.split("")

  english_word.each_char do |letter|
    if !is_vowel?(letter)
      letters.push(letter) # add letter to end
      letters.shift # remove first letter
    else
      break
    end
  end

  pig_latin_word = letters << "ay"
  return pig_latin_word.join
end

puts create_pig_latin(english_word)









