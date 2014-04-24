require 'eidolon/rgss3/rpg/base_item'

module RPG
  # == RGSS3
  # This data structure is specific to RGSS3 (VX Ace).
  # 
  # == Class
  # The data class for a class (as used by an actor).
  class Class < BaseItem
    attr_accessor :exp_params
    attr_accessor :params
    attr_accessor :learnings
  end
end