require 'eidolon/rgss3/rpg/system'

module RPG
  class System
    # == RGSS3
    # This data structure is specific to RGSS3 (VX Ace).
    # 
    # == TestBattler
    # Data class for the battlers used in battle tests.
    class TestBattler
      attr_accessor :actor_id
      attr_accessor :level
      attr_accessor :equips
    end
  end
end