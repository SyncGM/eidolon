require 'eidolon/rgss3/rpg/equip_item'

module RPG
  # == RGSS3
  # This data structure is specific to RGSS3 (VX Ace).
  # 
  # == Armor
  # The data class for armors.
  class Armor < EquipItem
    attr_accessor :atype_id
  end
end