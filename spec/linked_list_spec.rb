require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
  it "can add a node, create a string, and count the total nodes" do
    list = LinkedList.new
    expect(list.head).to eq(nil)
    expect(list.append("doop")).to eq("doop") 
    expect(list.head.next_node).to eq(nil)
    expect(list.count).to eq(1)
    expect(list.to_string).to eq("doop")
  end

  it "can add multiple nodes" do
    list = LinkedList.new
    expect(list.head).to eq(nil)
    expect(list.append("doop")).to eq("doop") 
    expect(list.head.next_node).to eq(nil)
    expect(list.append("deep")).to eq("deep")  
    expect(list.count).to eq(2) 
    expect(list.to_string).to eq("doop deep")
  end

  it "can add nodes to specific positions in the list" do
    list = LinkedList.new
    expect(list.append("plop")).to eq("plop")
    expect(list.to_string).to eq("plop")
    expect(list.append("suu")).to eq("suu")
    expect(list.prepend("dop")).to eq("dop")
    expect(list.to_string).to eq("dop plop suu")
    expect(list.count).to eq(3)
    expect(list.insert(1, "woo")).to eq("woo")
    expect(list.to_string).to eq("dop woo plop suu")
  end

  it "can use other methods to manipulate nodes" do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    expect(list.to_string).to eq("deep woo shi shu blop")
    expect(list.count).to eq(5)
    expect(list.find(2, 1)).to eq("shi")
    expect(list.find(1, 3)).to eq("woo shi shu")
    expect(list.includes?("deep")).to eq(true)
    expect(list.includes?("dep")).to eq(false)
    expect(list.pop).to eq("blop")
    expect(list.pop).to eq("shu")
    expect(list.to_string).to eq("deep woo shi")
    expect(list.count).to eq(3)
  end
end