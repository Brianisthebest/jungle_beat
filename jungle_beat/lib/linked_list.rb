class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(new_sound)
    new_node = @head
    if new_node == nil
      @head = Node.new(new_sound)
    end
    head.data
  end

  def count
    count = 1
  end

  def to_string
    head.data
  end

end

