require 'eidolon/rgss3/rpg/enemy'

module RPG
  class Enemy < BaseItem
    # == RGSS3
    # This data structure is specific to RGSS3 (VX Ace).
    # 
    # == DropItem
    # Data class for an item dropped by an enemy at the end of battle.
    class DropItem
      attr_accessor :kind
      attr_accessor :data_id
      attr_accessor :denominator
    end
  end
end