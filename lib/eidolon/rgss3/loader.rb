# This file loads all of the internal data structures used by RPG Maker VX
# Ace. Essentially, requiring this file will build a generic copy of the VX Ace
# data structures for use in a Ruby installation outside of Ace itself.

# Audio data structures.
load 'eidolon/rgss3/rpg/bgm.rb'
load 'eidolon/rgss3/rpg/bgs.rb'
load 'eidolon/rgss3/rpg/me.rb'
load 'eidolon/rgss3/rpg/se.rb'

# Files utilizing RPG::BaseItem.
load 'eidolon/rgss3/rpg/base_item.rb'
load 'eidolon/rgss3/rpg/base_item/feature.rb'
load 'eidolon/rgss3/rpg/equip_item.rb'
load 'eidolon/rgss3/rpg/usable_item.rb'
load 'eidolon/rgss3/rpg/actor.rb'
load 'eidolon/rgss3/rpg/class.rb'
load 'eidolon/rgss3/rpg/class/learning.rb'
load 'eidolon/rgss3/rpg/state.rb'
load 'eidolon/rgss3/rpg/enemy.rb'
load 'eidolon/rgss3/rpg/enemy/action.rb'
load 'eidolon/rgss3/rpg/enemy/drop_item.rb'

# Files utilizing RPG::EquipItem.
load 'eidolon/rgss3/rpg/armor.rb'
load 'eidolon/rgss3/rpg/weapon.rb'

# Files utilizing RPG::UsableItem.
load 'eidolon/rgss3/rpg/usable_item/damage.rb'
load 'eidolon/rgss3/rpg/usable_item/effect.rb'
load 'eidolon/rgss3/rpg/item.rb'
load 'eidolon/rgss3/rpg/skill.rb'

# Map-related data structures.
load 'eidolon/rgss3/rpg/map/encounter.rb'
load 'eidolon/rgss3/rpg/tileset.rb'

# The System data structures.
load 'eidolon/rgss3/rpg/system.rb'
load 'eidolon/rgss3/rpg/system/terms.rb'
load 'eidolon/rgss3/rpg/system/test_battler.rb'
load 'eidolon/rgss3/rpg/system/vehicle.rb'