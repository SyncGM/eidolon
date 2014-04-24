# This file loads all of the internal data structures used by RPG Maker VX.
# Essentially, requiring this file will build a generic copy of the VX data
# structures for use in a Ruby installation outside of VX itself.

# Audio data structures.
load 'eidolon/rgss2/rpg/bgm.rb'
load 'eidolon/rgss2/rpg/bgs.rb'
load 'eidolon/rgss2/rpg/me.rb'
load 'eidolon/rgss2/rpg/se.rb'

# Files utilizing RPG::BaseItem.
load 'eidolon/rgss2/rpg/base_item.rb'
load 'eidolon/rgss2/rpg/usable_item.rb'
load 'eidolon/rgss2/rpg/armor.rb'
load 'eidolon/rgss2/rpg/weapon.rb'

# Files utilizing RPG::UsableItem.
load 'eidolon/rgss2/rpg/item.rb'
load 'eidolon/rgss2/rpg/skill.rb'

# Battler-related data structures.
load 'eidolon/rgss2/rpg/actor.rb'
load 'eidolon/rgss2/rpg/class.rb'
load 'eidolon/rgss2/rpg/class/learning.rb'
load 'eidolon/rgss2/rpg/enemy.rb'
load 'eidolon/rgss2/rpg/enemy/action.rb'
load 'eidolon/rgss2/rpg/enemy/drop_item.rb'
load 'eidolon/rgss2/rpg/state.rb'

# Map-related data structures.
load 'eidolon/rgss2/rpg/area.rb'

# The System data structures.
load 'eidolon/rgss2/rpg/system.rb'
load 'eidolon/rgss2/rpg/system/terms.rb'
load 'eidolon/rgss2/rpg/system/test_battler.rb'
load 'eidolon/rgss2/rpg/system/vehicle.rb'