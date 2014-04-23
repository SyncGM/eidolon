require 'eidolon/rgss3/rpg/base_item'

module RPG
  class Class < BaseItem
    attr_accessor :exp_params
    attr_accessor :params
    attr_accessor :learnings
  end
end