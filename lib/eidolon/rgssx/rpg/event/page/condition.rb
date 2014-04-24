require 'eidolon/rgssx/rpg/event/page'

module RPG
  class Event
    class Page
      class Condition
        attr_accessor :actor_id
        attr_accessor :actor_valid
        attr_accessor :item_id
        attr_accessor :item_valid
        attr_accessor :self_switch_ch
        attr_accessor :self_switch_valid
        attr_accessor :switch1_id
        attr_accessor :switch1_valid
        attr_accessor :switch2_id
        attr_accessor :switch2_valid
        attr_accessor :variable_id
        attr_accessor :variable_valid
        attr_accessor :variable_value
      end
    end
  end
end