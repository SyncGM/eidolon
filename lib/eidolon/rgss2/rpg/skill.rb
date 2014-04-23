require 'eidolon/rgss2/rpg/usable_item'

module RPG
  class Skill < UsableItem
    attr_accessor :mp_cost
    attr_accessor :hit
    attr_accessor :message1
    attr_accessor :message2
  end
end