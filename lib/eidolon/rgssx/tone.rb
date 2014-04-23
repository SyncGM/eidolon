class Tone
  attr_accessor :red
  attr_accessor :green
  attr_accessor :blue
  attr_accessor :gray
  
  def self._load(array) # :nodoc:
    self.class.new.instance_eval do
      @red, @green, @blue, @gray = array.unpack('d4')
    end
  end
end