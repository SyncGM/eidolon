require 'eidolon/rgss3/rpg/base_item'

module RPG
  # == RGSS3
  # This data structure is specific to RGSS3 (VX Ace).
  # 
  # == UsableItem
  # Superclass of Skill and Item.
  class UsableItem < BaseItem
    attr_accessor :scope
    attr_accessor :occasion
    attr_accessor :speed
    attr_accessor :animation_id
    attr_accessor :success_rate
    attr_accessor :repeats
    attr_accessor :tp_gain
    attr_accessor :hit_type
    attr_accessor :damage
    attr_accessor :effects
  end
end