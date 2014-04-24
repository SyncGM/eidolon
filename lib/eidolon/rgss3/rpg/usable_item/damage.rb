require 'eidolon/rgss3/rpg/usable_item'

module RPG
  class UsableItem < BaseItem
    # == RGSS3
    # This data structure is specific to RGSS3 (VX Ace).
    # 
    # == Damage
    # The data class for damage.
    class Damage
      attr_accessor :type
      attr_accessor :element_id
      attr_accessor :formula
      attr_accessor :variance
      attr_accessor :critical
    end
  end
end