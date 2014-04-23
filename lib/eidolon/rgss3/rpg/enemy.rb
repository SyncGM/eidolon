require 'eidolon/rgss3/rpg/base_item'

module RPG
  class Enemy < BaseItem
    attr_accessor :battler_name
    attr_accessor :battler_hue
    attr_accessor :params
    attr_accessor :exp
    attr_accessor :gold
    attr_accessor :actions
    attr_accessor :drop_items
  end
end