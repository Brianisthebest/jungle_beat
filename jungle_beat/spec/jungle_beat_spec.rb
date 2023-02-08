require 'rspec'
require './lib/jungle_beat'
require './lib/linked_list'
require './lib/node'

RSpec.describe JungleBeat do
  describe '#initialize' do
    it 'exists' do
      jb = JungleBeat.new

      expect(jb).to be_a(JungleBeat)
    end

    it 'has a linked list and the head is nil' do
      jb = JungleBeat.new

      expect(jb.list).to be_a(LinkedList)
      expect(jb.list.head).to be nil
    end
  end

  describe '#append' do
    it 'can take in a string and set the head and next_node' do
      jb = JungleBeat.new
      jb.list

      expect(jb.append('deep doo ditt')).to eq('deep doo ditt')
      expect(jb.list.head.data).to eq('deep')
      expect(jb.list.head.next_node.data).to eq('doo')
      expect(jb.append('woo hoo shu')).to eq('woo hoo shu')
      expect(jb.count).to eq(6)
    end

    xit 'will only accept allowed sounds and reject the others' do
      jb = JungleBeat.new('deep')

      expect(jb.append('Mississippi')).to eq(0)
    end
  end

  describe '#play' do
    it 'will take in our nodes and play them' do
      jb = JungleBeat.new

      expect(jb.append('deep doo ditt woo hoo shu')).to eq('deep doo ditt woo hoo shu')
      expect(jb.count).to be(6)
      
      jb.play #WOWIE!
    end
  end

  describe '#all' do
    xit 'will list all the sounds in our list' do
      jb = JungleBeat.new('deep')

      expect(jb.all).to be(deep)
    end
  end

  describe '#rate' do
    it 'will allow for rate adjustments' do
      jb = JungleBeat.new
      jb.append('deep doo ditt woo hoo shu')

      jb.rate(100)
      jb.play
    end
  end

  describe '#reset_rate' do
    it 'will reset the rate to 500' do
      jb = JungleBeat.new
      jb.append('deep doo ditt woo hoo shu')
      jb.rate(100)
      jb.play
      jb.reset_rate
      jb.play
    end
  end

  describe '#voice' do
    it 'will change the voice' do
      jb = JungleBeat.new
      jb.append('deep doo ditt woo hoo shu')
      jb.play

      jb.rate(100)
      jb.voice('Albert')
      jb.play
      jb.reset_rate
    end
  end

  describe '#reset_voice' do
    it 'will reset the voice to Boing' do
      jb = JungleBeat.new
      jb.append('deep doo ditt woo hoo shu')
      jb.play

      jb.rate(100)
      jb.voice('Albert')
      jb.play
      jb.reset_voice
      jb.play
    end
  end
end