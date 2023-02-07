class JungleBeat
  attr_reader :list, :sounds
  attr_accessor :rate, :voice
  
  def initialize(sounds = nil)
    @list = LinkedList.new
    @rate = 500
    @voice = "Boing"
    if sounds != nil
       append(sounds)
    end
  end

  def append(sounds)
    valid_sounds = ['tee', 'dee', 'deep', 'bop', 'boop', 'la', 'na', 'doo', 'ditt', 'woo', 'hoo', 'shu']
    stored_sounds = ''
    sounds.split.each do |sound| #Splits our string and sends them on their merry way to list.append
        list.append(sound)
        stored_sounds = stored_sounds + " #{sound}"
    end
    stored_sounds.lstrip! #Or just list sounds and delete line 10 and 13?
  end


  def count
    list.count
  end

  def rate(rate_speed)
    @rate = rate_speed
    #add notes to see if I'm understanding git pulls correctly
  end

  def play
    `say -r #{@rate} -v #{@voice} #{list.to_string}` #IT'S HAPPENING!!!
  end

  def rate_reset
    @rate = 500
  end

  def voice(new_voice)
    @voice = new_voice
  end
end