require 'eidolon/rgss3/rpg/enemy'

module RPG
  class Enemy < BaseItem
    class Action
      attr_accessor :skill_id
      attr_accessor :condition_type
      attr_accessor :rating
      attr_accessor :condition_param1
      attr_accessor :condition_param2
    end
  end
end