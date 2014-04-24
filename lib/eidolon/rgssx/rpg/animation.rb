module RPG
  # == RGSSx
  # This class is present and relatively consistent across all RGSS versions.
  # 
  # == Animation
  # The data class for animations.
  class Animation
    attr_accessor :animation_name
    attr_accessor :animation_hue
    attr_accessor :animation1_hue
    attr_accessor :animation1_name
    attr_accessor :animation2_hue
    attr_accessor :animation2_name
    attr_accessor :frame_max
    attr_accessor :frames
    attr_accessor :id
    attr_accessor :name
    attr_accessor :position
    attr_accessor :timings
  end
end