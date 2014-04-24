module RPG
  # == RGSS2
  # This data structure is specific to RGSS2 (VX).
  # 
  # == Area
  # Data class for areas (as used by maps).
  class Area
    attr_accessor :id
    attr_accessor :name
    attr_accessor :map_id
    attr_accessor :rect
    attr_accessor :encounter_list
    attr_accessor :order
  end
end