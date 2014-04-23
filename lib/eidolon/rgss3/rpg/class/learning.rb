require 'eidolon/rgss3/rpg/class'

module RPG
  class Class < BaseItem
    class Learning
      attr_accessor :level
      attr_accessor :skill_id
      attr_accessor :note
    end
  end
end