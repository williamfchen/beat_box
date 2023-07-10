require './lib/node'
require './lib/linked_list'

RSpec.describe LinkedList do
    describe "creates class, append, count, to_string" do
        list = LinkedList.new

        it "exists" do
            expect(list).to be_an_instance_of(LinkedList)
            expect(list.head).to eq(nil)
        end

        it "can append" do
            list.append("doop")
            expect(list.head.data).to eq("doop")
            expect(list.head.next_node).to eq(nil)
        end

        it "can count" do
            expect(list.count).to eq(1)
        end

        it "creates a string" do
            expect(list.to_string).to eq("doop")
        end
        
        it "appends additional data"
            list.append("deep")
            expect(list.head.next_node.data).to eq("deep")
            expect(list.count).to eq(2)
            expect(list.to_string).to eq("doop deep")
        end
    end
    
    describe "additional methods insert, prepend" do
        list = LinkedList.new
        
        it "exists" do
            list.append("plop")
            expect(list.to_string).to eq("plop")
            list.append("suu")
            expect(list.to_string).to eq("plop suu")
        end

        it "can prepend" do
            list.prepend("dop")
            expect(list.to_string).to eq("dop plop suu")
            expect(list.count).to eq(3)
        end

        it "can insert" do    
            list.insert(1, "woo")
            expect(list.to_string).to eq("dop woo plop suu")
        end
    end
    describe "additional methods find, pop, includes?" do
        list = LinkedList.new
        list.append("deep")
        list.append("woo")
        list.append("shi")
        list.append("shu")
        list.append("blop")

        it "can find, pop, includes?" do
            expect(list.to_string).to eq("deep woo shi shu blop")
            expect(list.find(2, 1)).to eq("shi")
            expect(list.find(1, 3)).to eq("woo shi shu")
        end

        it "can includes?" do
            expect(list.includes?("deep")).to eq(true)
            expect(list.includes?("dep")).to eq(false)
        end

        it "can pop" do    
            expect(list.pop).to eq("blop")
            expect(list.to_string).to eq("deep woo shi shu")

            expect(list.pop).to eq("shu")
            expect(list.to_string).to eq("deep woo shi")
        end
    end
end


