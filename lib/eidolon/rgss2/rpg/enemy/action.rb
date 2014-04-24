require 'eidolon/rgss2/rpg/enemy'

module RPG
  class Enemy
    # == RGSS2
    # This data structure is specific to RGSS2 (VX).
    # 
    # == Action
    # Data class for enemy battle actions.
    class Action
      attr_accessor :kind
      attr_accessor :basic
      attr_accessor :skill_id
      attr_accessor :condition_type
      attr_accessor :condition_param1
      attr_accessor :condition_param2
      attr_accessor :rating
    end
  end
end