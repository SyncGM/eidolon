module RPG
  # == RGSSx
  # This class is present and consistent across all RGSS versions.
  # 
  # == Event
  # The data class for map events.
  class Event
    attr_accessor :id
    attr_accessor :name
    attr_accessor :x
    attr_accessor :y
    attr_accessor :pages
  end
end