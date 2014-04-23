require 'eidolon/rgss3/rpg/event/page'

module RPG
  class Event
    class Page
      class Graphic
        attr_accessor :tile_id
        attr_accessor :character_name
        attr_accessor :character_index
        attr_accessor :direction
        attr_accessor :pattern
      end
    end
  end
end