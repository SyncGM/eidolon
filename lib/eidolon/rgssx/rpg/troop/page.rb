require 'eidolon/rgssx/rpg/troop'

module RPG
  class Troop
    # == RGSSx
    # This class is present and consistent across all RGSS versions.
    # 
    # == Page
    # The data class for a battle event page.
    class Page
      attr_accessor :condition
      attr_accessor :span
      attr_accessor :list
    end
  end
end