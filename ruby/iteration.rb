
numbers = [1, 2, 3, 4 ,5, 6, 7, 8, 9, 10]
even_numbers = []
p numbers
numbers.delete_if { |number| number < 5 }
	p numbers
#less_than_5 = numbers.delete_if { |number| number < 5 }
puts numbers
numbers.keep_if { |number| number > 5 }
p numbers
even_numbers =  numbers.select { |number| number.even? }
p even_numbers

new_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p new_array
less_than_7 = []
less_than_7 =  new_array.take_while { |num| num < 7 }
p less_than_7

student = { age: 29,
	weeks_on_program: 6,
	weeks_til_site: 4,
	weeks_on_site: 9
}
new_student = {}
p student
student.delete_if { |item, integer| integer > 10 }
p student
student.keep_if { |item, integer| integer < 7 }
p student
new_student =  student.invert
p new_student

people = { age: 29,
	weeks_on_program: 6,
	weeks_til_site: 4,
	weeks_on_site: 9
}
p people
even_people = people.keep_if { |item, integer| integer.even? }
p even_people