puts "How many employees to be interviewed?"
employee_number = gets.chomp.to_i
count = 0
until employee_number == count
  puts "What is your name?"
  employee_name = gets.chomp
  if employee_name == 'Drake Cula' || employee_name == 'Tu Fang'
    is_vampire = true
  else
    is_vampire = false 
  end
  puts "How old are you? What year were you born?"
  employee_age = gets.chomp.to_i
  employee_birth_year = gets.chomp.to_i
  current_year = 2017
  if current_year - employee_birth_year == employee_age
    knows_their_age = true
    else
    knows_their_age = false
  end
  puts "Should we order some garlic bread?"
  employee_wants_garlic = gets.chomp
  if employee_wants_garlic == 'yes' || employee_wants_garlic == 'y'
    likes_garlic = true
  else employee_wants_garlic == 'no' || employee_wants_garlic == 'n'
    likes_garlic = false
  end
  puts "Would you like to enroll in the company's health ensurance?"
  employee_wants_insurance = gets.chomp
  if employee_wants_insurance == 'yes' || employee_wants_insurance == 'y'
    needs_insurance = true
  else employee_wants_insurance == 'no' || employee_wants_insurance == 'n'
    needs_insurance = false
  end
  if knows_their_age && (likes_garlic || needs_insurance)
    puts "Probably not a vampire."
  elsif !knows_their_age && (likes_garlic || needs_insurance)
    puts "Probably a vampire."
  elsif !(knows_their_age && likes_garlic && needs_insurance)
    puts "Certainly a vampire."
  elsif is_vampire && !(knows_their_age && likes_garlic && needs_insurance)
    puts "Definitely a vampire."
  else
    puts "Result inconclusive."
  end
  puts "Any allergies?"
  while true
   allergies = gets.chomp
    if allergies == 'done'
    break
    end 
    if allergies == 'sunshine'
      puts "Probably a vampire."
      break
    end
  end
count +=1
end
puts "Actually, never mind! What do these questions have to do with"
" anything? Let's all be friends."