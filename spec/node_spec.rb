require 'rspec'
require './lib/node'

RSpec.describe Node do
    it "exists" do
        node = Node.new("plop")
        
        expect(node).to be_an_instance_of(Node)
        expect(node.data).to eq("plop")
    end
    
end
