class Color
  attr_accessor :red
  attr_accessor :green
  attr_accessor :blue
  attr_accessor :alpha
  
  def self._load(array) # :nodoc:
    self.class.new.instance_eval do
      @red, @green, @blue, @alpha = array.unpack('d4')
    end
  end
end