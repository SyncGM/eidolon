require 'eidolon/rgssx/rpg/troop'

module RPG
  class Troop
    # == RGSSx
    # This class is present and relatively consistent across all RGSS versions.
    # 
    # == Member
    # The data class for enemy troop members.
    class Member
      attr_accessor :enemy_id
      attr_accessor :hidden
      attr_accessor :immortal
      attr_accessor :x
      attr_accessor :y
    end
  end
end