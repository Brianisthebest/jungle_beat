class JungleBeat
  attr_reader :list
  
  def initialize
    @list = LinkedList.new
  end

  def append(sounds)
    sounds.split(' ').each do |sound| #Splits our string and sends them on their merry way to list.append
      list.append(sound)
    end
    sounds
  end

  def count
    list.count
  end

  def play
    `say -r 500 -v Alex #{list.to_string}` #IT'S HAPPENING!!!
  end
end