require 'eidolon/rgss3/rpg/usable_item'

module RPG
  class Item < UsableItem
    attr_accessor :itype_id
    attr_accessor :price
    attr_accessor :consumable
  end
end