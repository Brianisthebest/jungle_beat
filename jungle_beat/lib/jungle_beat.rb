class JungleBeat
  attr_reader :linked_list
  
  def initialize
    @linked_list = linked_list
  end

  def list
    linked_list = LinkedList.new
  end

  def append(sounds)
    @sounds = sounds
  end
end