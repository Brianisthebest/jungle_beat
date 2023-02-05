require 'rspec'
require '.lib/jung_beat'
require '.lib/linked_list'
require '.lib/node'

RSpec.describe JungleBeat do
  describe '#initialize' do
    jb = JungleBeat.new

    expect(jb).to be_a(JungleBeat)
  end
end