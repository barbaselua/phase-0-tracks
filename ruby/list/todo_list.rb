class TodoList

  def initialize(list)
    @list = list
  end 

  def get_items
    @list 
  end

  def add_item(new_item)
    @list.push(new_item)
  end

  def delete_item(newest_item)
    @list.delete(newest_item)
    @list
    end  

  def get_item(x)
    @list[x]
  end 

end 