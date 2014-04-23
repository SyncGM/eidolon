require 'eidolon/rgss2/rpg/animation'

module RPG
  class Animation
    class Timing
      attr_accessor :frame
      attr_accessor :se
      attr_accessor :flash_scope
      attr_accessor :flash_color
      attr_accessor :flash_duration
    end
  end
end