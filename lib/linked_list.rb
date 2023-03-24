class LinkedList
  attr_reader :head

  def initialize (head)
    @head = head
  end

end

# append - adds a new piece of data (data can really be anything) to the list
# count - tells us how many things are in the list
# to_string - generates a string of all the elements in the list, separated by spaces