require 'eidolon/rgss3/rpg/base_item'

module RPG
  # == RGSS3
  # This data structure is specific to RGSS3 (VX Ace).
  # 
  # == State
  # The data class for states.
  class State < BaseItem
    attr_accessor :restriction
    attr_accessor :priority
    attr_accessor :auto_removal_timing
    attr_accessor :min_turns
    attr_accessor :max_turns
    attr_accessor :chance_by_damage
    attr_accessor :remove_by_damage
    attr_accessor :remove_at_battle_end
    attr_accessor :remove_by_restriction
    attr_accessor :remove_by_walking
    attr_accessor :steps_to_remove
    attr_accessor :message1
    attr_accessor :message2
    attr_accessor :message3
    attr_accessor :message4
  end
end