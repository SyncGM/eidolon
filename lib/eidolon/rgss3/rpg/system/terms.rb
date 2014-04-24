require 'eidolon/rgss3/rpg/system'

module RPG
  class System
    # == RGSS3
    # This data structure is specific to RGSS3 (VX Ace).
    # 
    # == Terms
    # Data class for terminology.
    class Terms
      attr_accessor :basic
      attr_accessor :params
      attr_accessor :etypes
      attr_accessor :commands
    end
  end
end