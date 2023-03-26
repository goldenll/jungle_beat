class LinkedList
  attr_reader :head 

  def initialize 
    @head = nil
    @nodes_count = 0
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
    else
      make_new_node(data)
    end
    @nodes_count += 1
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
    if @head == nil
      @head = Node.new(data)
    else
      old_head = @head
      @head = Node.new(data)
      @head.next_node = old_head
    end
    @nodes_count += 1
  end

  def insert(position, data)
    current_node = @head
    count = 1
      until count == position 
        current_node = current.next_node
        count += 1
      end
    insert_node = Node.new(data)
    insert_node.next_node = current_node.next_node
    current_node.next_node = insert_node
    @nodes_count += 1
  end


  def find(position, elements)
    count = 0
    current_node = @head
    until count == position
      count += 1
      current_node = current_node.next_node
    end
    look(elements, current_node)
  end

  def look(elements, current_node)
    found = ("")
    count = 0
    until count == elements
      break if current_node == nil
      count += 1
      found << current_node.data + " "
      current_node = current_node.next_node
    end
    found.to_str.strip
  end

  def includes?(value)
    current_node = @head
    until current_node == nil
      if current_node.data == value
        return true
      else
        return false
      end
      current_node = current_node.next_node
    end
  end

  def pop 
    current_node = @head
    until current_node.next_node.next_node == nil
      current_node = current_node.next_node
    end
    removed_node_data = current_node.next_node.data
    current_node.next_node = nil
    @nodes_count += -1
    return removed_node_data
  end
end 