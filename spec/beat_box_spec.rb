require './lib/node'
require './lib/linked_list'
require './lib/beat_box'

RSpec.describe BeatBox do
    # it "exists" do
    #     bb = BeatBox.new

    #     expect(bb).to be_an_instance_of(BeatBox)
    #     # can you test for bb.list without creating a variable for the list
    #     expect(bb.list.head).to eq(nil)

    #     bb.append("deep doo ditt")
    #     expect(bb.list.head.data).to eq("deep")
    #     expect(bb.list.head.next_node.data).to eq("doo")
        
    #     bb.append("woo hoo shu")
    #     expect(bb.count).to eq(6)
    # end

    # it "plays" do
    #     bb = BeatBox.new
    #     bb.append("deep doo ditt woo hoo shu")

    #     expect(bb.count).to eq(6)
    #     expect(bb.list.count).to eq(6)
    #     # require 'pry';binding.pry
    #     bb.play
    # end

    it "validates" do
        bb = BeatBox.new("deep")
        expect(bb.all).to eq("deep")
        # require 'pry';binding.pry

        bb.append("Mississippi")
        expect(bb.all).to eq("deep")
        
        bb.prepend("tee tee tee Mississippi")
        expect(bb.all).to eq("tee tee tee deep")
        # require 'pry';binding.pry
    end

end

