# Use the indexed letters from the string to allow us to us the ".next" method to move every letter forward one.
def encrypt(string_e)
  index = 0
  while index < string_e.length
  z_score = string_e.index"z"
    if z_score != nil
      string_e[index] = "a"
      index += 1
    else
      string_e[index] = string_e[index].next!
      index += 1
    end
  end
  puts string_e
end
#Use an alphabet string to determine an input letters location, using index loops to work through input words. Then use that location to move the input letter back a letter.
def decrypt(string_d)
  alpha = "abcdefghijklmnopqrstuvwxyz"
  index = 0
  while index < string_d.length
    working_letter = string_d[index]
    working_index = alpha.index(working_letter)-1
    string_d[index] = alpha[working_index]
  index += 1
  end
  puts string_d
end
encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")
decrypt(encrypt("swordfish"))
#The nested method call above does NOT work.  It does not appear to take the nested method output as a legitimate input for the second method.  Rather, a NoMethodError was returned in regards to line 25 in regards to .length method used loop through the index.  Could not figure out why this did not work.
