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

  def prepend(sound)
    @node_counter += 1
    current_node = @head
    if current_node == nil
      @head = Node.new(sound)
    else
      new_head = Node.new(sound)
      new_head.next_node = current_node
      @head = new_head
    end
  end

  def insert(index, sound)
    @node_counter += 1
    current_node = @head
    if current_node == nil
      @head = Node.new(sound)
    else 
      new_node = Node.new(sound)
      before_node = current_node
      index.times do
       current_node = current_node.next_node
       new_node.next_node = current_node
      end
      before_node.next_node = new_node
    end
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
