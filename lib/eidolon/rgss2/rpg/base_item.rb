module RPG
  # == RGSS2
  # This data structure is specific to RGSS2 (VX).
  # 
  # == BaseItem
  # Superclass of Skill, Item, Weapon, and Armor.
  class BaseItem
    attr_accessor :id
    attr_accessor :name
    attr_accessor :icon_index
    attr_accessor :description
    attr_accessor :note
  end
end