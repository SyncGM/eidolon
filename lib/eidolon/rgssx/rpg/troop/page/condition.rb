require 'eidolon/rgssx/rpg/troop/page'

module RPG
  class Troop
    class Page
      # == RGSSx
      # This class is present and relatively consistent across all RGSS
      # versions.
      # 
      # == Condition
      # The data class for battle event page conditions.
      class Condition
        attr_accessor :actor_hp
        attr_accessor :actor_id
        attr_accessor :actor_valid
        attr_accessor :enemy_hp
        attr_accessor :enemy_index
        attr_accessor :enemy_valid
        attr_accessor :switch_id
        attr_accessor :switch_valid
        attr_accessor :turn_a
        attr_accessor :turn_b
        attr_accessor :turn_ending
        attr_accessor :turn_valid
      end
    end
  end
end