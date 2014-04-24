require 'eidolon/rgss3/rpg/base_item'

module RPG
  # == RGSS3
  # This data structure is specific to RGSS3 (VX Ace).
  # 
  # == EquipItem
  # The superclass of weapons and armor.
  class EquipItem < BaseItem
    attr_accessor :price
    attr_accessor :etype_id
    attr_accessor :params
  end
end