class Table
  attr_reader :xsize
  attr_reader :ysize
  attr_reader :zsize
  
  def self._load(array) # :nodoc:
    self.class.new.instance_eval do
      @size, @xsize, @ysize, @zsize, _, *@data = array.unpack('LLLLLS*')
    end
  end
end