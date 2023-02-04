require 'rspec'
require './lib/node'
require './lib/linked_list'

RSpec.describe LinkedList do
  describe '#initialize' do
    it 'exists' do
      list = LinkedList.new
    
      expect(list).to be_instance_of(LinkedList)
    end
    it 'has no head when created' do
      list = LinkedList.new

      expect(list.head).to be(nil)
    end
  end

  describe '#append' do
    list = LinkedList.new
    it 'can append a single node' do
      list = LinkedList.new
      list.append('doop')

      expect(list.append('doop')).to eq('doop')
      expect(list.head).to be_a(Node)
      expect(list.head.next_node).to eq(nil)
    end

    it 'can append multiple additions' do
      list = LinkedList.new
      list.append('doop')
      list.append('deep')

      expect(list.)
      expect(list.head.next_node).to be_a(Node)

    end
  end

  describe '#count' do
    it 'can count how many nodes' do
      list = LinkedList.new
      list.append('doop')
      list.count

      expect(list.count).to be(1)
    end

  end

  describe '$to_string' do
    it 'stores a string' do
      list = LinkedList.new
      list.append('doop')

      expect(list.to_string).to eq('doop')
    end
  end
end
