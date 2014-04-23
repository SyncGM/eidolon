require 'eidolon/rgss2/rpg/troop/page'

module RPG
  class Troop
    class Page
      class Condition
        attr_accessor :turn_ending
        attr_accessor :turn_valid
        attr_accessor :enemy_valid
        attr_accessor :actor_valid
        attr_accessor :switch_valid
        attr_accessor :turn_a
        attr_accessor :turn_b
        attr_accessor :enemy_index
        attr_accessor :enemy_hp
        attr_accessor :actor_id
        attr_accessor :actor_hp
        attr_accessor :switch_id
      end
    end
  end
end