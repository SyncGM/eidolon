module RPG
  # == RGSSx
  # This class is present and relatively consistent across all RGSS versions.
  # 
  # == Map
  # The data class for maps.
  class Map
    attr_accessor :autoplay_bgm
    attr_accessor :autoplay_bgs
    attr_accessor :battleback1_name
    attr_accessor :battleback2_name
    attr_accessor :bgm
    attr_accessor :bgs
    attr_accessor :data
    attr_accessor :disable_dashing
    attr_accessor :display_name
    attr_accessor :encounter_list
    attr_accessor :encounter_step
    attr_accessor :events
    attr_accessor :height
    attr_accessor :note
    attr_accessor :parallax_loop_x
    attr_accessor :parallax_loop_y
    attr_accessor :parallax_name
    attr_accessor :parallax_show
    attr_accessor :parallax_sx
    attr_accessor :parallax_sy
    attr_accessor :scroll_type
    attr_accessor :specify_battleback
    attr_accessor :tileset_id
    attr_accessor :width
  end
end