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