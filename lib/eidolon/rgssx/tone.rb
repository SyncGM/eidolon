# The color tone class. Each component is handled with a floating-point value
# (Float).
# 
# This class is present and consistent across all RGSS versions.
class Tone
  # The red balance adjustment value (-255 to 255).
  attr_accessor :red
  
  # The green balance adjustment value (-255 to 255).
  attr_accessor :green
  
  # The blue balance adjustment value (-255 to 255).
  attr_accessor :blue
  
  # The gray balance adjustment value (-255 to 255).
  attr_accessor :gray
  
  def self._load(array) # :nodoc:
    self.class.new.instance_eval do
      @red, @green, @blue, @gray = array.unpack('d4')
    end
  end
end