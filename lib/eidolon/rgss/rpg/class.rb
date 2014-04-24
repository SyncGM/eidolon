module RPG
  # == RGSS
  # This data structure is specific to RGSS (XP).
  # 
  # == Class
  # Data class for classes (as used by actors).
  class Class
    attr_accessor :id
    attr_accessor :name
    attr_accessor :position
    attr_accessor :weapon_set
    attr_accessor :armor_set
    attr_accessor :element_ranks
    attr_accessor :state_ranks
    attr_accessor :learnings
  end
end