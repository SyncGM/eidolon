require 'eidolon/rgss2/rpg/base_item'

module RPG
  # == RGSS2
  # This data structure is specific to RGSS2 (VX).
  # 
  # == Weapon
  # Data class for weapons.
  class Weapon < BaseItem
    attr_accessor :animation_id
    attr_accessor :price
    attr_accessor :hit
    attr_accessor :atk
    attr_accessor :def
    attr_accessor :spi
    attr_accessor :agi
    attr_accessor :two_handed
    attr_accessor :fast_attack
    attr_accessor :dual_attack
    attr_accessor :critical_bonus
    attr_accessor :element_set
    attr_accessor :state_set
  end
end