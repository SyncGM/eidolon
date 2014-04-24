module RPG
  # == RGSSx
  # This class is present and relatively consistent across all RGSS versions.
  # 
  # == MoveRoute
  # The data class for a move route.
  class MoveRoute
    attr_accessor :repeat
    attr_accessor :skippable
    attr_accessor :wait
    attr_accessor :list
  end
end