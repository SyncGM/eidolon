require 'eidolon/rgss3/rpg/usable_item'

module RPG
  class UsableItem < BaseItem
    class Damage
      attr_accessor :type
      attr_accessor :element_id
      attr_accessor :formula
      attr_accessor :variance
      attr_accessor :critical
    end
  end
end