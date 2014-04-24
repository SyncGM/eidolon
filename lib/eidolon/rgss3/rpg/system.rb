module RPG
  # == RGSS3
  # This data structure is specific to RGSS3 (VX Ace).
  # 
  # == System
  # Data class for the system (miscellaneous configuration options).
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
  end
end