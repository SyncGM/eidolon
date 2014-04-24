require 'eidolon/rgssx/rpg/event'

module RPG
  class Event
    class Page
      attr_accessor :always_on_top
      attr_accessor :condition
      attr_accessor :direction_fix
      attr_accessor :graphic
      attr_accessor :list
      attr_accessor :move_frequency
      attr_accessor :move_route
      attr_accessor :move_speed
      attr_accessor :move_type
      attr_accessor :priority_type
      attr_accessor :step_anime
      attr_accessor :through
      attr_accessor :trigger
      attr_accessor :walk_anime
    end
  end
end