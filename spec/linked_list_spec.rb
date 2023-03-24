require 'rspec'
require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
  it "exists" do
    list = LinkedList.new

    expect(list).to be_an_instance_of(LinkedList)
  end

  it "does not contain a head" do
    list = LinkedList.new

    expect(list.head).to eq(nil)
  end

  it "can append data" do
    list = LinkedList.new
    list.append("doop")

    expect(list.append).to eq("doop")
  end

# list.append("doop")
# # => "doop"


  # it "" do
  #   list = LinkedList.new

  #   expect().to eq()
  # end

  # it "" do
  #   list = LinkedList.new

  #   expect().to eq()
  # end

  # it "" do
  #   list = LinkedList.new

  #   expect().to eq()
  # end

  # it "" do
  #   list = LinkedList.new

  #   expect().to eq()
  # end

end




# list
# # => <LinkedList head=<Node data="doop" next_node=nil #5678904567890> #45678904567>

# list.head.next_node
# # => nil

# list.count
# # => 1

# list.to_string
# # => "doop"