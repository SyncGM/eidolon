require 'eidolon/rgssx/rpg/event/page'

module RPG
  class Event
    class Page
      # == RGSSx
      # This class is present and relatively consistent across all RGSS
      # versions.
      # 
      # == Graphic
      # The data class for an event page's graphic.
      class Graphic
        attr_accessor :blend_type
        attr_accessor :character_hue
        attr_accessor :character_index
        attr_accessor :character_name
        attr_accessor :direction
        attr_accessor :opacity
        attr_accessor :pattern
        attr_accessor :tile_id
      end
    end
  end
end