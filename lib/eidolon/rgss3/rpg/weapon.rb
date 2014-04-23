require 'eidolon/rgss3/rpg/equip_item'

module RPG
  class Weapon < EquipItem
    attr_accessor :wtype_id
    attr_accessor :animation_id
  end
end