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
    #     # require 'pry';binding.pry66    
    #     # expect(bb.count).to eq(6)
    #     # expect(bb.list.count).to eq(6)
    #     # bb.play
    # end

    it "validates" do
        bb = BeatBox.new("deep")
        expect(bb.all).to eq("deep")

        bb.append("Mississippi")
        expect(bb.all).to eq("deep")
        
        bb.prepend("tee tee tee Mississippi")
        expect(bb.all).to eq("tee tee tee deep")

        # bb.play
        # require 'pry';binding.pry
    end

    it "can modify rate and voice" do
        bb = BeatBox.new("deep dop dop deep")
        expect(bb.all).to eq("deep dop dop deep")
        expect(bb.rate).to eq(500)
        expect(bb.voice).to eq("Boing")

        bb.rate = 100
        expect(bb.rate).to eq(100)

        bb.voice = "Daniel"
        expect(bb.voice).to = eq("Daniel")
    end


end

