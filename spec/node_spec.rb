require "./lib/node" 

RSpec.describe Node do
  it "contains data" do
    node = Node.new("plop")
    expect(node.data).to eq("plop")
  end

  it "does not contain another node" do
    node = Node.new("plop")
    expect(node.next_node).to eq(nil)
  end
end