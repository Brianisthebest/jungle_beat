class LinkedList
  attr_reader :head, :next_node, :node_counter

  def initialize
    @head = nil
    @node_counter = 0
  end

  def append(sound)
    @node_counter += 1
    current_node = @head
    if current_node == nil
      @head = Node.new(sound)
    else
      while current_node.next_node != nil
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(sound)
    end
    sound
  end

  def count
    @node_counter
  end

  def to_string
   node_sounds = ''
   current_node = @head
    until current_node == nil
      node_sounds = node_sounds + " #{current_node.data}"
      current_node = current_node.next_node
    end
    node_sounds.lstrip!
  end
end
