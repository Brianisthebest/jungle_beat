class LinkedList
  attr_reader :head, :next_node, :node_counter

  def initialize
    @head = nil
    @node_counter = 0
  end

  def append(new_node)
    @node_counter += 1
    if @head == nil
      @head = Node.new(new_node)
    else
      current_node = @head
      while current_node.next_node != nil
        current_node = current_node.next_node
      end
    end
   @head.data
  end

  def count
    @node_counter
  end

  def to_string
    @head.data
  end
end
