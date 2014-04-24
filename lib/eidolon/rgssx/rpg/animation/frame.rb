require 'eidolon/rgssx/rpg/animation'

module RPG
  class Animation
    # == RGSSx
    # This class is present and consistent across all RGSS versions.
    # 
    # == Frame
    # The data class for animation frames.
    class Frame
      attr_accessor :cell_data
      attr_accessor :cell_max
    end
  end
end