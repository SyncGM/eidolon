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
  
  # Accesses the array's elements. Pulls the same number of arguments as there
  # are dimensions in the created array. Returns +nil+ if the specified element
  # does not exist.
  def [](x, y = 0, z = 0)
    return nil if x >= @xsize || y >= @ysize
    @data[x + y * @xsize + z * @xsize * @ysize]
  end
  
  # Provides object inspection identical to that provided by RGSSx.
  def to_s
    "#<Table:0x#{(object_id << 1).to_s(16)}>"
  end
  alias :inspect :to_s
  
  private
  def self._load(array)
    self.new.instance_eval do
      _, @xsize, @ysize, @zsize, _, *@data = array.unpack('LLLLLS*')
      self
    end
  end
end