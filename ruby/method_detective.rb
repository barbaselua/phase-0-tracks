# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

p "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

p "zom".insert(1, 'o')
#or 
"zom".insert(2, 'o')
# => “zoom”

 p "enhance".center(11)
# => "    enhance    "

 p "Stop! You're under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

 p "the usual".insert(9, " suspects")
#or 
"the usual".concat(" suspects")
#or
"the usual".ljust(17, ' suspects')
#=> "the usual suspects"

 " suspects".insert(0, "the usual")
#or 
" suspects".rjust(18, 'the usual')
#or 
" suspects".prepend('the usual')
# => "the usual suspects"

p "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

p "The mystery of the missing first letter".gsub('T', '')
# => "he mystery of the missing first letter"

p "Elementary,    my   dear        Watson!".gsub(/\s+/, " ")
#or
"Elementary,    my   dear        Watson!".squeeze
# => "Elementary, my dear Watson!"

p "z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# !!! Returns the integer ordinal of a one-character string.

p "How many times does the letter 'a' appear in this string?".count "a"
# => 4