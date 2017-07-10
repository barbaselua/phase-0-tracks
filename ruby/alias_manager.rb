# Alias Manager 
# swapp the first and last name.
# if a letter is a vowel, change it to the next vowel in the alphabet.
# if a letter is a consonant, change it to the next consonant in the alphabet.
# provide user interface
# store fake names in to a data structure.
# iterate through the data structure and print the data the user entered.
#real_name = "Felicia Torres"
#solution = "Vussit Gimodoe"
#alphabet = "abcdefghijklmnoprstuvwxyz"????
#vowels = "aeiou"
#consonants = "bcdfghjklmnprstvwxyz"
#real_name = "Felicia Torres"
#fake_name = "Vussit Gimodoe"
# first method will take the name, convert the string into an array, reverse the letters of the array, have the reverse
#name stored into a string
def initial_method(name)
      downcase_name = name.downcase
      name_split = downcase_name.split('').reverse
      name_array = name_split.join(' ')
end
#testing initial_method
p initial_method("AnaMaria")
#
#next method will take care of changing the vowels with the next vowel in the given vowel string.
def next_vowel(vowel_char)
  vowels= "aeiou"
  vowel_char = vowel_char.downcase
  index = 0
  while index < vowel_char.length
    bad_vowel = vowel_char.index"u"
    if bad_vowel != nil
      vowel_char = "a"
      index += 1
    else 
    good_vowel = vowel_char[index]
    good_index = vowels.index(good_vowel)+1
    vowel_char[index] = vowels[good_index]
    index += 1
    end 
  end
  vowel_char
end
#testing vowel method
p next_vowel("aeio")