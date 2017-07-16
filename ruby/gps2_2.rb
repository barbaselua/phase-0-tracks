# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # define method. 
  #split string so that we can create array. 
  #store the splited string in an array.
  #create hash to store array item and default value
  #print hash of items
# output: [what data type goes here, array or hash?] hash
def create_list(items)
	array_of_items = items.split
	grocery_list = {}
	#hash_of_items[array_of_items[0]] = 2
	array_of_items.each do |new_item|
		grocery_list[new_item] = 2
	end
	print_hashes(grocery_list)
end
# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
	#define method
	#set quantity optional
	#set quantity to default IF none is passed
	#add new item
	#return the grocery list
# output: the grocery list(hash)
def add_item(grocery_list, item_name, item_quantity=nil)
	if item_quantity == nil
		item_quantity = 2
	end
	grocery_list[item_name] = item_quantity 
	grocery_list
end

