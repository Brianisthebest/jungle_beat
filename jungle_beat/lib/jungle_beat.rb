class JungleBeat
  attr_reader :list, :sounds
  
  def initialize(sounds = 'deep')
    @list = LinkedList.new
    @sounds = sounds
  end

  def append(sounds)
    valid_sounds = ['tee', 'dee', 'deep', 'bop', 'boop', 'la', 'na', 'doo', 'ditt', 'woo', 'hoo', 'shu']
    stored_sounds = ''
    sounds.split(' ').each do |sound| #Splits our string and sends them on their merry way to list.append
      if valid_sounds.include?(sound)
        list.append(sound)
        stored_sounds = stored_sounds + " #{sound}"
      # require 'pry'; binding.pry
      else
        # require 'pry'; binding.pry
        sounds.delete!(sounds)
        require 'pry'; binding.pry
        # sounds = 0
      end
    end
    stored_sounds.lstrip! 
  end

  def count
    list.count
  end

  def play
    `say -r 500 -v Boing #{list.to_string}` #IT'S HAPPENING!!!
  end
end