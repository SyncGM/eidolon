require 'eidolon/rgss2/rpg/base_item'

module RPG
  # == RGSS2
  # This data structure is specific to RGSS2 (VX).
  # 
  # == Armor
  # Data class for armor.
  class Armor < BaseItem
    attr_accessor :kind
    attr_accessor :price
    attr_accessor :eva
    attr_accessor :atk
    attr_accessor :def
    attr_accessor :spi
    attr_accessor :agi
    attr_accessor :prevent_critical
    attr_accessor :half_mp_cost
    attr_accessor :double_exp_gain
    attr_accessor :auto_hp_recover
    attr_accessor :element_set
    attr_accessor :state_set
  end
end