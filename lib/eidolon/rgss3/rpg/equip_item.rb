require 'eidolon/rgss3/rpg/base_item'

module RPG
  class EquipItem < BaseItem
    attr_accessor :price
    attr_accessor :etype_id
    attr_accessor :params
  end
end