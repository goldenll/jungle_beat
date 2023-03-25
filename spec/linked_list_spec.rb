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
    expect(list.count).to eq(1)
    expect(list.to_string).to eq("doop")
  end

  it "can add multiple nodes" do
    list = LinkedList.new
    expect(list.head).to eq(nil)

    list.append("doop")
    expect(list.head.data).to eq("doop") 
    expect(list.head.next_node).to eq(nil)

    list.append("deep")
    expect(list.head.next_node.data).to eq("deep") 
    expect(list.count).to eq(2) 
    expect(list.to_string).to eq("doop deep")
  end
end