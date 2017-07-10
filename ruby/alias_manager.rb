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