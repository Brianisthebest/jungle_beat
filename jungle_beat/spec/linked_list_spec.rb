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

      expect(list.head).to be nil
    end
  end

  describe '#append' do
    it 'can append a single node' do
      list = LinkedList.new
      # list.append('doop')

      expect(list.append('doop')).to eq('doop')
      expect(list.head).to be_a(Node)
      expect(list.head.next_node).to be nil
    end

    it 'can append multiple additions' do
      list = LinkedList.new
      list.append('doop')
      # list.append('deep')

      expect(list.append('deep')).to eq('deep')
      # Apparently this runs the method as well. GOOD TO KNOW
      expect(list.head.next_node).to be_a(Node)
      expect(list.count).to eq(2)
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

    it 'stores multiple node strings' do
      list = LinkedList.new
      list.append('wee')
      list.append('wah')

      expect(list.to_string).to eq('wee wah')
    end
  end

  describe '#prepend' do
    it 'adds a node to the beginning, and makes it the new head' do
      list = LinkedList.new
      list.append('plop')

      expect(list.to_string).to eq('plop')
      list.append('suu')
      list.prepend('dop')

      expect(list.to_string).to eq('dop plop suu')
      expect(list.count).to eq(3)
    end
  end

  describe '#insert' do
    it 'inserts a node into the list' do
      list = LinkedList.new
      list.append('shoo')
      list.append('bop')
      list.insert(1, 'woo')

      expect(list.to_string).to eq('shoo woo bop')
    end
  end

    describe '#find' do
      it 'will find the specified node' do
        list = LinkedList.new
        list.append('deep')
        list.append('woo')
        list.append('shi')
        list.append('shu')
        list.append('blop')

        expect(list.to_string).to eq('deep woo shi shu blop')
        expect(list.find(2,1)).to eq('shi')
        expect(list.find(1,3)).to eq('woo shi shu')
      end
    end

    describe '#includes?' do
      it 'will return true or false if the sound is or is not included' do
        list = LinkedList.new
        list.append('deep')
        
        expect(list.includes?('deep')).to be true
        expect(list.includes?('dep')).to be false
      end
    end

    describe '#pop' do
      it 'will remove the last element' do
        list = LinkedList.new
        list.append('deep')
        list.append('woo')
        list.append('shi')
        list.append('shu')
        list.append('blop')

        expect(list.pop).to eq("blop")
        expect(list.pop).to eq('shu')
        expect(list.to_string).to eq('deep woo shi')
      end
    end
end

