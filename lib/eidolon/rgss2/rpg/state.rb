module RPG
  # == RGSS2
  # This data structure is specific to RGSS2 (VX).
  # 
  # == State
  # Data class for states.
  class State
    attr_accessor :id
    attr_accessor :name
    attr_accessor :icon_index
    attr_accessor :restriction
    attr_accessor :priority
    attr_accessor :atk_rate
    attr_accessor :def_rate
    attr_accessor :spi_rate
    attr_accessor :agi_rate
    attr_accessor :nonresistance
    attr_accessor :offset_by_opposite
    attr_accessor :slip_damage
    attr_accessor :reduce_hit_ratio
    attr_accessor :battle_only
    attr_accessor :release_by_damage
    attr_accessor :hold_turn
    attr_accessor :auto_release_prob
    attr_accessor :message1
    attr_accessor :message2
    attr_accessor :message3
    attr_accessor :message4
    attr_accessor :element_set
    attr_accessor :state_set
    attr_accessor :note
  end
end