require 'eidolon/rgss3/rpg/usable_item'

module RPG
  class UsableItem < BaseItem
    # == RGSS3
    # This data structure is specific to RGSS3 (VX Ace).
    # 
    # == Effect
    # The data class for use effects.
    class Effect
      attr_accessor :code
      attr_accessor :data_id
      attr_accessor :value1
      attr_accessor :value2
    end
  end
end