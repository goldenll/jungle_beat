require 'rspec'
require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
  it "exists" do
    list = LinkedList.new

    expect(list).to be_an_instance_of(LinkedList)
  end

  it "does not initially contain a head" do
    list = LinkedList.new

    expect(list.head).to eq(nil)
  end

  it "can add nodes" do
    list = LinkedList.new

    list.append("doop")

    expect(list.head.data).to eq("doop") 
    expect(list.head.next_node).to eq(nil)
    # expect(list.count).to eq(1)
  end

  xit "can add other nodes" do
    list = LinkedList.new

    list.append("deep")

    expect(list.head.data).to eq("deep") 
  end




end





# list.count
# # => 1

# list.to_string
# # => "doop"


  # it "" do
  #   list = LinkedList.new

  #   expect().to eq()
  # end

  # it "" do
  #   list = LinkedList.new

  #   expect().to eq()
  # end