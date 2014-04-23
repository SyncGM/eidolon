require 'eidolon/rgss/rpg/event/page'

module RPG
  class Event
    class Page
      class Graphic
        attr_accessor :tile_id
        attr_accessor :character_name
        attr_accessor :character_hue
        attr_accessor :direction
        attr_accessor :pattern
        attr_accessor :opacity
        attr_accessor :blend_type
      end
    end
  end
end