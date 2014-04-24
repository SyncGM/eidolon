require 'eidolon/rgss/rpg/class'

module RPG
  class Class
    # == RGSS
    # This data structure is specific to RGSS (XP).
    # 
    # == Learning
    # Data class for the learned skills of a class (as used by actors).
    class Learning
      attr_accessor :level
      attr_accessor :skill_id
    end
  end
end