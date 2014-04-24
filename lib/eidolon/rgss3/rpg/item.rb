require 'eidolon/rgss3/rpg/usable_item'

module RPG
  # == RGSS3
  # This data structure is specific to RGSS3 (VX Ace).
  # 
  # == Item
  # The data class for items.
  class Item < UsableItem
    attr_accessor :itype_id
    attr_accessor :price
    attr_accessor :consumable
  end
end