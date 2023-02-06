class JungleBeat
  attr_reader :list
  
  def initialize
    @list = LinkedList.new
  end

  def append(sounds)
    valid_sounds = 
    stored_sounds = ''
    sounds.split(' ').each do |sound| #Splits our string and sends them on their merry way to list.append
      list.append(sound)
      stored_sounds = stored_sounds + " #{sound}"
      
    end
    stored_sounds.lstrip! #Or just list sounds and delete line 10 and 13?
  end

  def count
    list.count
  end

  def play
    `say -r 500 -v Alex #{list.to_string}` #IT'S HAPPENING!!!
  end
end