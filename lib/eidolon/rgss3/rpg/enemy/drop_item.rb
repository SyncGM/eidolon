require 'eidolon/rgss3/rpg/enemy'

module RPG
  class Enemy < BaseItem
    class DropItem
      attr_accessor :kind
      attr_accessor :data_id
      attr_accessor :denominator
    end
  end
end