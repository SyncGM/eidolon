require 'eidolon/rgss2/rpg/enemy'

module RPG
  class Enemy
    class DropItem
      attr_accessor :kind
      attr_accessor :item_id
      attr_accessor :weapon_id
      attr_accessor :armor_id
      attr_accessor :denominator
    end
  end
end