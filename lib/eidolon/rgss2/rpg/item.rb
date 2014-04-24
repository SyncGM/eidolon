require 'eidolon/rgss2/rpg/usable_item'

module RPG
  # == RGSS2
  # This data structure is specific to RGSS2 (VX).
  # 
  # == Item
  # Data class for items.
  class Item < UsableItem
    attr_accessor :price
    attr_accessor :consumable
    attr_accessor :hp_recovery_rate
    attr_accessor :hp_recovery
    attr_accessor :mp_recovery_rate
    attr_accessor :mp_recovery
    attr_accessor :parameter_type
    attr_accessor :parameter_points
  end
end