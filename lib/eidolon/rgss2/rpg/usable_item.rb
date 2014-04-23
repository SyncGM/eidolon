require 'eidolon/rgss2/rpg/base_item'

module RPG
  class UsableItem < BaseItem
    attr_accessor :scope
    attr_accessor :occasion
    attr_accessor :speed
    attr_accessor :animation_id
    attr_accessor :common_event_id
    attr_accessor :base_damage
    attr_accessor :variance
    attr_accessor :atk_f
    attr_accessor :spi_f
    attr_accessor :physical_attack
    attr_accessor :damage_to_mp
    attr_accessor :absorb_damage
    attr_accessor :ignore_defense
    attr_accessor :element_set
    attr_accessor :plus_state_set
    attr_accessor :minus_state_set
  end
end