require 'eidolon/rgss2/rpg/enemy'

module RPG
  class Enemy
    class Action
      attr_accessor :kind
      attr_accessor :basic
      attr_accessor :skill_id
      attr_accessor :condition_type
      attr_accessor :condition_param1
      attr_accessor :condition_param2
      attr_accessor :rating
    end
  end
end