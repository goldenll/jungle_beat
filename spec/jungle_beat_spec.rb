require "./lib/jungle_beat"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe JungleBeat do
  it "exists" do
    jb = JungleBeat.new
    expect(jb).to be_an_instance_of(JungleBeat)

    jb.append("deep doo ditt")
    expect(jb.list.head.data).to eq("deep") 
  end
  


# jb.append("deep doo ditt")
# => "deep doo ditt"

# jb.list.head.data
# => "deep"

# jb.list.head.next_node.data
# => "doo"

# jb.append("woo hoo shu")
# => "woo hoo shu"

# jb.count
# 6



end #final