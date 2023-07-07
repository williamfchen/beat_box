require './lib/node'
require './lib/linked_list'

RSpec.describe LinkedList do
    it "exists" do
        list = LinkedList.new

        expect(list).to be_an_instance_of(LinkedList)
        expect(list.head).to eq(nil)
    end

    xit "can append nodes" do
        list = linkedList.new

        expect(list)
    end

end


