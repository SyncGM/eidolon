module RPG
  # == RGSS3
  # This data structure is specific to RGSS3 (VX Ace).
  # 
  # == Tileset
  # The data class for tilesets (as used by maps).
  class Tileset
    attr_accessor :id
    attr_accessor :mode
    attr_accessor :name
    attr_accessor :tileset_names
    attr_accessor :flags
    attr_accessor :note
  end
end