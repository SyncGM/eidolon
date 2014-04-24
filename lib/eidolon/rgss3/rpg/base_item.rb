module RPG
  # == RGSS3
  # This data structure is specific to RGSS3 (VX Ace).
  # 
  # == BaseItem
  # Superclass of actor, class, skill, item, weapon, armor, enemy, and state.
  # 
  # Some items are unnecessary depending on the type of data, but they are
  # included for the sake of convenience.
  class BaseItem
    attr_accessor :id
    attr_accessor :name
    attr_accessor :icon_index
    attr_accessor :description
    attr_accessor :features
    attr_accessor :note
  end
end