require 'rspec'
require './lib/node'

RSpec.describe Node do

  it 'exists'do
    node = Node.new("plop")

    expect(node).to be_instance_of(Node)
  end

  it 'can call the nodes data' do
   node = Node.new("plop")

   expect(node.data).to eq("plop")
  end

  it 'can check value of next node' do
    node = Node.new("plop")

    expect(node.next_node).to eq nil
  end

end