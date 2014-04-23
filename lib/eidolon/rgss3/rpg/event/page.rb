require 'eidolon/rgss3/rpg/event'

module RPG
  class Event
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
    end
  end
end