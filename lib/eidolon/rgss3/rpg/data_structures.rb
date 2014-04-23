module RPG
  class Item < UsableItem
    attr_accessor :itype_id
    attr_accessor :price
    attr_accessor :consumable
  end
  
  class Skill < UsableItem
    attr_accessor :stype_id
    attr_accessor :mp_cost
    attr_accessor :tp_cost
    attr_accessor :message1
    attr_accessor :message2
    attr_accessor :required_wtype_id1
    attr_accessor :required_wtype_id2
  end
  
  class CommonEvent
    attr_accessor :id
    attr_accessor :name
    attr_accessor :trigger
    attr_accessor :switch_id
    attr_accessor :list
  end
  
  class Event
    attr_accessor :id
    attr_accessor :name
    attr_accessor :x
    attr_accessor :y
    attr_accessor :pages
    
    class Page
      attr_accessor :condition
      attr_accessor :graphic
      attr_accessor :move_type
      attr_accessor :move_speed
      attr_accessor :move_route
      attr_accessor :move_frequency
      attr_accessor :walk_anime
      attr_accessor :step_anime
      attr_accessor :through
      attr_accessor :list
      attr_accessor :direction_fix
      attr_accessor :priority_type
      attr_accessor :trigger
      
      class Condition
        attr_accessor :switch1_valid
        attr_accessor :switch2_valid
        attr_accessor :variable_valid
        attr_accessor :self_switch_valid
        attr_accessor :item_valid
        attr_accessor :itemd_id
        attr_accessor :actor_valid
        attr_accessor :actor_id
        attr_accessor :switch1_id
        attr_accessor :switch2_id
        attr_accessor :variable_id
        attr_accessor :variable_value
        attr_accessor :item_id
        attr_accessor :actor_id
        attr_accessor :self_switch_ch
      end
      
      class Graphic
        attr_accessor :tile_id
        attr_accessor :character_name
        attr_accessor :character_index
        attr_accessor :direction
        attr_accessor :pattern
      end
    end
  end
  
  class EventCommand
    attr_accessor :code
    attr_accessor :indent
    attr_accessor :parameters
  end
  
  class Map
    attr_accessor :display_name
    attr_accessor :tileset_id
    attr_accessor :width
    attr_accessor :height
    attr_accessor :scroll_type
    attr_accessor :specify_battleback
    attr_accessor :battleback1_name
    attr_accessor :battleback2_name
    attr_accessor :autoplay_bgm
    attr_accessor :bgm
    attr_accessor :autoplay_bgs
    attr_accessor :bgs
    attr_accessor :disable_dashing
    attr_accessor :encounter_list
    attr_accessor :encounter_step
    attr_accessor :parallax_name
    attr_accessor :parallax_loop_x
    attr_accessor :parallax_loop_y
    attr_accessor :parallax_sx
    attr_accessor :parallax_sy
    attr_accessor :parallax_show
    attr_accessor :note
    attr_accessor :data
    attr_accessor :events
    
    class Encounter
      attr_accessor :troop_id
      attr_accessor :weight
      attr_accessor :region_set
    end
  end
  
  class MapInfo
    attr_accessor :name
    attr_accessor :parent_id
    attr_accessor :order
    attr_accessor :expanded
    attr_accessor :scroll_x
    attr_accessor :scroll_y
  end
  
  class MoveCommand
    attr_accessor :code
    attr_accessor :parameters
  end
  
  class MoveRoute
    attr_accessor :repeat
    attr_accessor :skippable
    attr_accessor :wait
    attr_accessor :list
  end
  
  class Tileset
    attr_accessor :id
    attr_accessor :mode
    attr_accessor :name
    attr_accessor :tileset_names
    attr_accessor :flags
    attr_accessor :note
  end
  
  class Troop
    attr_accessor :id
    attr_accessor :name
    attr_accessor :members
    attr_accessor :pages
    
    class Member
      attr_accessor :enemy_id
      attr_accessor :x
      attr_accessor :y
      attr_accessor :hidden
    end
    
    class Page
      attr_accessor :condition
      attr_accessor :span
      attr_accessor :list
      
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
  
  class System
    attr_accessor :game_title
    attr_accessor :version_id
    attr_accessor :japanese
    attr_accessor :party_members
    attr_accessor :currency_unit
    attr_accessor :skill_types
    attr_accessor :weapon_types
    attr_accessor :armor_types
    attr_accessor :elements
    attr_accessor :switches
    attr_accessor :variables
    attr_accessor :boat
    attr_accessor :ship
    attr_accessor :airship
    attr_accessor :title1_name
    attr_accessor :title2_name
    attr_accessor :opt_draw_title
    attr_accessor :opt_use_midi
    attr_accessor :opt_transparent
    attr_accessor :opt_followers
    attr_accessor :opt_slip_death
    attr_accessor :opt_floor_death
    attr_accessor :opt_display_tp
    attr_accessor :opt_extra_exp
    attr_accessor :window_tone
    attr_accessor :title_bgm
    attr_accessor :battle_bgm
    attr_accessor :battle_end_me
    attr_accessor :gameover_me
    attr_accessor :sounds
    attr_accessor :test_battlers
    attr_accessor :test_troop_id
    attr_accessor :start_map_id
    attr_accessor :start_x
    attr_accessor :start_y
    attr_accessor :terms
    attr_accessor :battleback1_name
    attr_accessor :battleback2_name
    attr_accessor :battler_name
    attr_accessor :battler_hue
    attr_accessor :edit_map_id
    
    class Terms
      attr_accessor :basic
      attr_accessor :params
      attr_accessor :etypes
      attr_accessor :commands
    end
    
    class TestBattler
      attr_accessor :actor_id
      attr_accessor :level
      attr_accessor :equips
    end
    
    class Vehicle
      attr_accessor :character_name
      attr_accessor :character_index
      attr_accessor :bgm
      attr_accessor :start_map_id
      attr_accessor :start_x
      attr_accessor :start_y
    end
  end
end