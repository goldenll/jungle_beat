require "./lib/node" 

RSpec.describe Node do
  it "exists" do
    node = Node.new("plop")
    expect(node).to be_an_instance_of(Node)
  end

  it "contains data" do
    node = Node.new("plop")
    expect(node.data).to eq("plop")
  end

  it "does not contain another node" do
    node = Node.new("plop")
    expect(node.next_node).to eq(nil)
  end
end