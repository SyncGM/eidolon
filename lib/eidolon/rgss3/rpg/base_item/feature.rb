require 'eidolon/rgss3/rpg/base_item'

module RPG
  class BaseItem
    # == RGSS3
    # This data structure is specific to RGSS3 (VX Ace).
    # 
    # == Feature
    # The data class for features.
    class Feature
      attr_accessor :code
      attr_accessor :data_id
      attr_accessor :value
    end
  end
end