# == RGSSx
# This class is present and consistent across all RGSS versions.
# 
# == Table
# The multidimensional array class. Each element is an integer of 2 signed
# bytes ranging from -32,768 to 32,767.
class Table
  # Size of the Table's X dimension.
  attr_reader :xsize
  
  # Size of the Table's Y dimension.
  attr_reader :ysize
  
  # Size of the Table's Z dimension.
  attr_reader :zsize
  
  private
  def self._load(array)
    self.new.instance_eval do
      @size, @xsize, @ysize, @zsize, _, *@data = array.unpack('LLLLLS*')
      self
    end
  end
end