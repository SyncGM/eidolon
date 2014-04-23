require 'eidolon/rgss2/rpg/troop'

module RPG
  class Troop
    class Member
      attr_accessor :enemy_id
      attr_accessor :x
      attr_accessor :y
      attr_accessor :hidden
      attr_accessor :immortal
    end
  end
end