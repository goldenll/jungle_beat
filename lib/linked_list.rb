class LinkedList
  attr_reader :head 

  def initialize 
    @head = nil
    @nodes_count = 0
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
      @nodes_count += 1
    else
      make_new_node(data)
      @nodes_count += 1
    end
  end

  def make_new_node(data)
    current_node = @head
    until current_node.next_node.nil?
      current_node = current_node.next_node
    end
    current_node.next_node = Node.new(data)
  end

  def count
    @nodes_count
  end

  def to_string
    string = ""
    string << @head.data
    current_node = @head.next_node
    until current_node == nil
      string << " " + current_node.data
      current_node = current_node.next_node
    end
    string
  end
  
  def prepend(data)

    
  end

# prepend will add nodes to the beginning of the list.


end





# insert will insert one or more elements at a given position in the list. It takes two parameters, the first one is the position at which to insert nodes, the second parameter is the string of data to be inserted.