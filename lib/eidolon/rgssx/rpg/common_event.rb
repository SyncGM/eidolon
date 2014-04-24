module RPG
  # == RGSSx
  # This class is present and consistent across all RGSS versions.
  # 
  # == CommonEvent
  # The data class for common events.
  class CommonEvent
    attr_accessor :id
    attr_accessor :name
    attr_accessor :trigger
    attr_accessor :switch_id
    attr_accessor :list
  end
end