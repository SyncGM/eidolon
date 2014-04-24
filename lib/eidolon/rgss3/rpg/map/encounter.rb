require 'eidolon/rgssx/rpg/map'

module RPG
  class Map
    # == RGSS3
    # This data structure is specific to RGSS3 (VX Ace).
    # 
    # == Encounter
    # The data class for encounter settings.
    class Encounter
      attr_accessor :troop_id
      attr_accessor :weight
      attr_accessor :region_set
    end
  end
end