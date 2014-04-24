require 'eidolon/rgss3/rpg/equip_item'

module RPG
  # == RGSS3
  # This data structure is specific to RGSS3 (VX Ace).
  # 
  # == Weapon
  # The data class for weapons.
  class Weapon < EquipItem
    attr_accessor :wtype_id
    attr_accessor :animation_id
  end
end