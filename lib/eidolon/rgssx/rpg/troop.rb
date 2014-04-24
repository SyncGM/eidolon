module RPG
  # == RGSSx
  # This class is present and consistent across all RGSS versions.
  # 
  # == Troop
  # The data class for enemy troops (collections of enemies).
  class Troop
    attr_accessor :id
    attr_accessor :name
    attr_accessor :members
    attr_accessor :pages
  end
end