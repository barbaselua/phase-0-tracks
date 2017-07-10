#release 0  
def search_arr(var1, var2)
index = 0 
var3 = nil 
var1.each do |list|
if list == var2
var3 = index
else 
index += 1 
end
end
var3
end 
arr = [42, 89, 23, 1]
p search_arr(arr, 1)
p search_arr(arr, 5)

#release 1 
def fibonacci(n)
  if n ==1 
    1 
  elsif n==2 
    1 
  else 
    fibonacci(n-1) + fibonacci(n-2)
  end 
end 
n = 6
puts "#{n}'s fibonacci value is #{fibonacci(n)}."
array = [fibonacci(n-2), fibonacci(n-1)]
array.each do |num| p num
end 
# unfortunately our program prints out the only the last 2 Fibonacci terms.