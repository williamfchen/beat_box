require './lib/node'
require './lib/linked_list'
require './lib/beat_box'

RSpec.describe BeatBox do
    describe "iteration 3" do
        bb = BeatBox.new

        it "exists" do
            expect(bb).to be_an_instance_of(BeatBox)
            expect(bb.list.head).to eq(nil)
        end

        it "can append" do
            bb.append("deep doo ditt")
            expect(bb.list.head.data).to eq("deep")
            expect(bb.list.head.next_node.data).to eq("doo")
        end

        it "can count" do
            bb.append("woo hoo shu")
            expect(bb.list.to_string).to eq("deep doo ditt woo hoo shu")
            expect(bb.count).to eq(6)
        end

        it "can play" do
            bb.play
        end
    end

    describe "iteration 4" do
        bb = BeatBox.new("deep")

        it "exists" do
            expect(bb).to be_an_instance_of(BeatBox)
            expect(bb.list.head.data).to eq("deep")
        end
        
        it "checks approved sounds" do
            bb.append("Mississippi")
            expect(bb.list.to_string).to eq("deep")
        end
        
        it "can all" do
            expect(bb.all).to eq("deep")
        end

        it "can prepend" do  
            bb.prepend("tee tee tee Mississippi")
            expect(bb.all).to eq("tee tee tee deep")
        end
    end

    describe "iteration 4.5" do
        bb = BeatBox.new("deep dop dop deep")

        it "can rate" do
            expect(bb.all).to eq("deep dop dop deep")
            expect(bb.rate).to eq(500)
            expect(bb.rate = 100).to eq(100)
        end

        it "can reset rate" do
            bb.reset_rate
            expect(bb.rate).to eq(500)
        end

        it "can voice reset" do
            expect(bb.voice).to eq("Boing")
            expect(bb.voice = "Daniel").to eq("Daniel")
        end

        it "can voice reset" do
            bb.reset_voice
            expect(bb.voice).to eq("Boing")
        end  
    end
end

