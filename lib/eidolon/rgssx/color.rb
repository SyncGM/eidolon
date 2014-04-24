# == RGSSx
# This class is present and consistent across all RGSS versions.
# 
# == Color
# The RGBA color class. Each component is handled with a floating-point value
# (Float).
class Color
  # The red value (0-255).
  attr_accessor :red
  
  # The green value (0-255).
  attr_accessor :green
  
  # The blue value (0-255).
  attr_accessor :blue
  
  # The alpha value (0-255).
  attr_accessor :alpha
  
  private
  def self._load(array)
    self.new.instance_eval do
      @red, @green, @blue, @alpha = array.unpack('d4')
      self
    end
  end
end