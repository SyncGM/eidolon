require 'eidolon/rgss2/rpg/class'

module RPG
  class Class
    # == RGSS2
    # This data structure is specific to RGSS2 (VX).
    # 
    # == Learning
    # Data class for the learned skills of a class (as used by actors).
    class Learning
      attr_accessor :level
      attr_accessor :skill_id
    end
  end
end