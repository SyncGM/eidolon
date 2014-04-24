require 'eidolon/rgss3/rpg/class'

module RPG
  class Class < BaseItem
    # == RGSS3
    # This data structure is specific to RGSS3 (VX Ace).
    # 
    # == Learning
    # Data class for the learned skills of a class (as used by actors).
    class Learning
      attr_accessor :level
      attr_accessor :skill_id
      attr_accessor :note
    end
  end
end