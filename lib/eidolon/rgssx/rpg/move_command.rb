module RPG
  # == RGSSx
  # This class is present and consistent across all RGSS versions.
  # 
  # == MoveCommand
  # The data class for move commands (as used in a MoveRoute).
  class MoveCommand
    attr_accessor :code
    attr_accessor :parameters
  end
end