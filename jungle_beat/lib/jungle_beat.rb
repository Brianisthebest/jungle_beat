class JungleBeat
  attr_reader :list
  
  def initialize
    @list = LinkedList.new
  end

  def append(sounds)
    sounds.split(' ').each do |sound|
      list.append(sound)
    end
    sounds
  end

  def count
    list.count
  end
end