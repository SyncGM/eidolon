require 'eidolon/rgss2/rpg/system'

module RPG
  class System
    # == RGSS2
    # This data structure is specific to RGSS2 (VX).
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