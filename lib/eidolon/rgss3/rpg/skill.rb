require 'eidolon/rgss3/rpg/usable_item'

module RPG
  class Skill < UsableItem
    attr_accessor :stype_id
    attr_accessor :mp_cost
    attr_accessor :tp_cost
    attr_accessor :message1
    attr_accessor :message2
    attr_accessor :required_wtype_id1
    attr_accessor :required_wtype_id2
  end
end