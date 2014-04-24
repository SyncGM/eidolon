require 'eidolon/rgss2/rpg/usable_item'

module RPG
  # == RGSS2
  # This data structure is specific to RGSS2 (VX).
  # 
  # == Skill
  # Data class for skills.
  class Skill < UsableItem
    attr_accessor :mp_cost
    attr_accessor :hit
    attr_accessor :message1
    attr_accessor :message2
  end
end