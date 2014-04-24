module RPG
  # == RGSSx
  # This class is present and consistent across all RGSS versions.
  # 
  # == EventCommand
  # The base data class for all event commands run through +Game_Interpreter+.
  class EventCommand
    attr_accessor :code
    attr_accessor :indent
    attr_accessor :parameters
  end
end