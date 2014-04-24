require 'eidolon/rgss3/rpg/enemy'

module RPG
  class Enemy < BaseItem
    # == RGSS3
    # This data structure is specific to RGSS3 (VX Ace).
    # 
    # == Action
    # Data class for enemy battle actions.
    class Action
      attr_accessor :skill_id
      attr_accessor :condition_type
      attr_accessor :rating
      attr_accessor :condition_param1
      attr_accessor :condition_param2
    end
  end
end