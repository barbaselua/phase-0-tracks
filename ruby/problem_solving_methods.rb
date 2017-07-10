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
# release 2
def bubble_sort(array)
  loop do
    sort = false
    (array.length-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        sort = true
      end
    end
    break if not sort
  end
  array
end
array_list = [2,32, 1, 40, 13, 15]
bubble_sort(array_list)

