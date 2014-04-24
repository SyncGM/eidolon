# The multidimensional array class. Each element is an integer of 2 signed
# bytes ranging from -32,768 to 32,767.
# 
# This class is present and consistent across all RGSS versions.
class Table
  # Size of the Table's X dimension.
  attr_reader :xsize
  
  # Size of the Table's Y dimension.
  attr_reader :ysize
  
  # Size of the Table's Z dimension.
  attr_reader :zsize
  
  def self._load(array) # :nodoc:
    self.new.instance_eval do
      @size, @xsize, @ysize, @zsize, _, *@data = array.unpack('LLLLLS*')
      self
    end
  end
end