module RPG
  # == RGSSx
  # This class is present and relatively consistent across all RGSS versions.
  # 
  # == MapInfo
  # The data class for map information.
  class MapInfo
    attr_accessor :name
    attr_accessor :parent_id
    attr_accessor :order
    attr_accessor :expanded
    attr_accessor :scroll_x
    attr_accessor :scroll_y
  end
end