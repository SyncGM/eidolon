require 'eidolon/rgss3/rpg/system'

module RPG
  class System
    # == RGSS3
    # This data structure is specific to RGSS3 (VX Ace).
    # 
    # == Vehicle
    # Data class for vehicles.
    class Vehicle
      attr_accessor :character_name
      attr_accessor :character_index
      attr_accessor :bgm
      attr_accessor :start_map_id
      attr_accessor :start_x
      attr_accessor :start_y
    end
  end
end