module RPG
  # == RGSS2
  # This data structure is specific to RGSS2 (VX).
  # 
  # == Class
  # Data class for a class (as used by actors).
  class Class
    attr_accessor :id
    attr_accessor :name
    attr_accessor :position
    attr_accessor :weapon_set
    attr_accessor :armor_set
    attr_accessor :element_ranks
    attr_accessor :state_ranks
    attr_accessor :learnings
    attr_accessor :skill_name_valid
    attr_accessor :skill_name
  end
end