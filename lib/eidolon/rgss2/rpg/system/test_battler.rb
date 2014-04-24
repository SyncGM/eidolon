require 'eidolon/rgss2/rpg/system'

module RPG
  class System
    # == RGSS2
    # This data structure is specific to RGSS2 (VX).
    # 
    # == TestBattler
    # Data class for the battlers used in battle tests.
    class TestBattler
      attr_accessor :actor_id
      attr_accessor :level
      attr_accessor :weapon_id
      attr_accessor :armor1_id
      attr_accessor :armor2_id
      attr_accessor :armor3_id
      attr_accessor :armor4_id
    end
  end
end