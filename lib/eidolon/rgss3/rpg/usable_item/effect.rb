require 'eidolon/rgss3/rpg/usable_item'

module RPG
  class UsableItem < BaseItem
    class Effect
      attr_accessor :code
      attr_accessor :data_id
      attr_accessor :value1
      attr_accessor :value2
    end
  end
end