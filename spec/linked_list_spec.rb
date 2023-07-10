require './lib/node'
require './lib/linked_list'

RSpec.describe LinkedList do
    it "exists" do
        list = LinkedList.new

        expect(list).to be_an_instance_of(LinkedList)
        expect(list.head).to eq(nil)
    end

    it "can append, count, and to_string" do
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

    it "can prepend, insert" do
        list = LinkedList.new
        list.append("plop")
        
        expect(list.to_string).to eq("plop")

        list.append("suu")

        expect(list.to_string).to eq("plop suu")

        # require 'pry';binding.pry
        list.prepend("dop")

        expect(list.to_string).to eq("dop plop suu")
        expect(list.count).to eq(3)
        
        list.insert(1, "woo")

        expect(list.to_string).to eq("dop woo plop suu")
    end

    it "can find, pop, includes?" do
        list = LinkedList.new
        list.append("deep")
        list.append("woo")
        list.append("shi")
        list.append("shu")
        list.append("blop")

        expect(list.to_string).to eq("deep woo shi shu blop")
        expect(list.find(2, 1)).to eq("shi")
        expect(list.find(1, 3)).to eq("woo shi shu")
        expect(list.includes?("deep")).to eq(true)
        expect(list.includes?("dep")).to eq(false)
        
        expect(list.pop).to eq("blop")
        expect(list.to_string).to eq("deep woo shi shu")

        expect(list.pop).to eq("shu")
        expect(list.to_string).to eq("deep woo shi")
    end


end


