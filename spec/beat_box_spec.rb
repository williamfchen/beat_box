require './lib/node'
require './lib/linked_list'
require './lib/beat_box'

RSpec.describe BeatBox do
    describe "creates a class, can modify, and plays" do
        bb = BeatBox.new

        it "exists" do
            expect(bb).to be_an_instance_of(BeatBox)
            expect(bb.list.head).to eq(nil)
        end

        it "appends" do
            bb.append("deep doo ditt")
            expect(bb.list.head.data).to eq("deep")
            expect(bb.list.head.next_node.data).to eq("doo")

            bb.append("woo hoo shu")
            expect(bb.count).to eq(6)
        end

        it "plays" do
            bb.play
        end
    end

    describe "validates sounds, creates a string, appends, prepends" do
        bb = BeatBox.new("deep")

        it "creats a string for .all" do
            expect(bb.all).to eq("deep")
        end

        it "appends" do
            bb.append("Mississippi")
            expect(bb.all).to eq("deep")
        end

        it "prepends" do    
            bb.prepend("tee tee tee Mississippi")
            expect(bb.all).to eq("tee tee tee deep")
        end
    end

    describe "can modify rate and voice" do
        bb = BeatBox.new("deep dop dop deep")

        it "reads rate and can reset" do
            expect(bb.rate).to eq(500)
            expect(bb.rate = 100).to eq(100)

            bb.reset_rate
            expect(bb.rate).to eq(500)
        end

        it "reads voice and can reset" do
            expect(bb.voice).to eq("Boing")
            expect(bb.voice = "Daniel").to eq("Daniel")

            bb.reset_voice
            expect(bb.voice).to eq("Boing")
        end  
    end
end

