module RPG
  # == RGSS2
  # This data structure is specific to RGSS2 (VX).
  # 
  # == Troop
  # Data class for enemy troops (collections of enemies).
  class Troop
    attr_accessor :id
    attr_accessor :name
    attr_accessor :members
    attr_accessor :pages
  end
end