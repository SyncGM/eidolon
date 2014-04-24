require 'eidolon/rgssx/rpg/animation'

module RPG
  class Animation
    # == RGSSx
    # This class is present and relatively consistent across all RGSS versions.
    # 
    # == Timing
    # The data class for the timing of an animation's SE and flash effects.
    class Timing
      attr_accessor :condition
      attr_accessor :flash_color
      attr_accessor :flash_duration
      attr_accessor :flash_scope
      attr_accessor :frame
      attr_accessor :se
    end
  end
end