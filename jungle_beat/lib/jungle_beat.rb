class JungleBeat
  attr_reader :list, :sounds
  
  def initialize(sounds = nil)
    @list = LinkedList.new
    if sounds != nil
       append(sounds)
    end
  end

  def append(sounds)
    valid_sounds = ['tee', 'dee', 'deep', 'bop', 'boop', 'la', 'na', 'doo', 'ditt', 'woo', 'hoo', 'shu']
    stored_sounds = ''

    sounds.split(' ').each do |sound| #Splits our string and sends them on their merry way to list.append
      if valid_sounds.include?(sound)
        list.append(sound)

        stored_sounds = stored_sounds + " #{sound}"
      else
        
        sounds.delete!(sounds)
        sounds = sounds.count('')
      end
    end
    # stored_sounds.lstrip!
  end

  def count
    list.count
  end

  def play
    `say -r 500 -v Boing #{list.to_string}` #IT'S HAPPENING!!!
  end
end