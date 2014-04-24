require 'eidolon/rgss2/rpg/enemy'

module RPG
  class Enemy
    # == RGSS2
    # This data structure is specific to RGSS2 (VX).
    # 
    # == DropItem
    # Data class for an item dropped by an enemy at the end of battle.
    class DropItem
      attr_accessor :kind
      attr_accessor :item_id
      attr_accessor :weapon_id
      attr_accessor :armor_id
      attr_accessor :denominator
    end
  end
end