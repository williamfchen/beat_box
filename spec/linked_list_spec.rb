require './lib/node'
require './lib/linked_list'

RSpec.describe LinkedList do
    it "exists" do
        list = LinkedList.new

        expect(list).to be_an_instance_of(LinkedList)
        expect(list.head).to eq(nil)
    end

    it "can append nodes" do
        list = LinkedList.new
        list.append("doop")
        expect(list.head.data).to eq("doop")
        expect(list.head.next_node).to eq(nil)
        expect(list.count).to eq(1)
        expect(list.to_string).to eq("doop")
        
        list.append("deep")
        
        expect(list.head.next_node.data).to eq("deep")
        expect(list.count).to eq(2)
        expect(list.to_string).to eq("doop deep")
    end

    it "can prepend and insert" do
        list = LinkedList.new
        list.append("plop")
        
        expect(list.to_string).to eq("plop")

        list.append("suu")

        expect(list.to_string).to eq("plop suu")

        list.prepend("dop")

        expect(list.to_string).to eq("dop plop suu")
        expect(list.count).to eq(3)
        # require 'pry';binding.pry
        list.insert(1, "woo")

        expect(list.to_string).to eq("dop woo plop suu")
    end

end


