class LinkedList
  attr_reader :head, :next_node

  def initialize 
    @head = nil
    @next_node = nil
    @nodes_count = 0
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
      @nodes_count += 1
    else 
      current_node = @head
      while(current_node.next_node)
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(data)
      @nodes_count += 1
    end
  end

  def count
    @nodes_count
  end




  # def to_string
  # end


end

# append - adds a new piece of data (data can really be anything) to the list
# count - tells us how many things are in the list
# to_string - generates a string of all the elements in the list, separated by spaces