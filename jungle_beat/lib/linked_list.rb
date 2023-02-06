class LinkedList
  attr_reader :head, :next_node, :node_counter

  def initialize
    @head = nil
    @node_counter = 0
  end

  def append(sound)
    @node_counter += 1
    current_node = @head #Make sure we always have and start at a head
    if current_node == nil 
      @head = Node.new(sound)
    else
      while current_node.next_node != nil #Run throught the list until at last node
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(sound) #Last link becomes the new node
    end
    sound
  end

  def prepend(sound)
    @node_counter += 1
    current_node = @head
    if current_node == nil
      @head = Node.new(sound)
    else
      new_head = Node.new(sound) #Node that will become out head
      new_head.next_node = current_node #Move out current head back one
      @head = new_head #Establishes our new head to be the head
    end
  end

  def insert(index, sound)
    @node_counter += 1
    current_node = @head
    if current_node == nil
      @head = Node.new(sound)
    else 
      new_node = Node.new(sound) #Creating the node that will be inserted
      previous_node = current_node #The node that will be moving spots with our new node
      index.times do #Using the index arguement being passed in to move that many times in the list
        current_node = current_node.next_node
      end
      new_node.next_node = current_node #Moving our current node back to allow our new node in and 
      previous_node.next_node = new_node #Set this linked list back on track and every little node happy with where they are
    end
  end

  def count
    node_counter #Counts the nodes
  end

  def to_string
   node_sounds = '' #Store out soon to be sounds
   current_node = @head
    until current_node == nil #Runs through the entire list
      node_sounds = node_sounds + " #{current_node.data}" #String interpolation to pop the data in the nodes into a string
      current_node = current_node.next_node #Cycles through the list
    end
    node_sounds.lstrip! #Begone pesky " " at the beginning!
  end

  def find(index, length)
    found_node_sounds = '' #It worked up there, let's do it again
    current_node = @head
    index.times do
      current_node = current_node.next_node #Cycle through the nodes to get to the spot we want to stop using the index arguement
    end
    length.times do
      found_node_sounds = found_node_sounds + " #{current_node.data}" #Looks like we found it, lets put those sounds in a string
      current_node = current_node.next_node
    end
    found_node_sounds.lstrip! #Bye again " "
  end

  def includes?(sound) 
    current_node = @head
    node_counter.times do #Search through the entire list
      if current_node.data == sound
        return true #Hopefully find what we're looking for
      else
        return false #We didn't find it, sad face
      end
    end
  end

  def pop
    current_node = @head
    until current_node.next_node.next_node == nil #Stopping this train to give us all the info we want to take one out and store the others back
      current_node = current_node.next_node
    end
    last_node = current_node.next_node #This ones leaving the list
    current_node.next_node = nil #There was never a trace of him
    last_node.data #I guess there was a trace, well not after this!
  end
end