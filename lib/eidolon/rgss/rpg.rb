# This file loads all of the internal data structures used by RPG Maker XP.
# Essentially, requiring this file will build a generic copy of the XP data
# structures for use in a Ruby installation outside of XP itself.
# 
# The XP data structures are extraordinarily simple and only require that they
# be loaded -- the actual order of loading them is unimportant (unlike the data
# structures used by VX and VX Ace, which require some specific ordering).

load 'eidolon/rgss/rpg/actor.rb'
load 'eidolon/rgss/rpg/animation.rb'
load 'eidolon/rgss/rpg/animation/frame.rb'
load 'eidolon/rgss/rpg/animation/timing.rb'
load 'eidolon/rgss/rpg/armor.rb'
load 'eidolon/rgss/rpg/audio_file.rb'
load 'eidolon/rgss/rpg/class.rb'
load 'eidolon/rgss/rpg/class/learning.rb'
load 'eidolon/rgss/rpg/common_event.rb'
load 'eidolon/rgss/rpg/enemy.rb'
load 'eidolon/rgss/rpg/enemy/action.rb'
load 'eidolon/rgss/rpg/event.rb'
load 'eidolon/rgss/rpg/event/page.rb'
load 'eidolon/rgss/rpg/event/page/condition.rb'
load 'eidolon/rgss/rpg/event/page/graphic.rb'
load 'eidolon/rgss/rpg/event_command.rb'
load 'eidolon/rgss/rpg/item.rb'
load 'eidolon/rgss/rpg/map.rb'
load 'eidolon/rgss/rpg/map_info.rb'
load 'eidolon/rgss/rpg/move_command.rb'
load 'eidolon/rgss/rpg/move_route.rb'
load 'eidolon/rgss/rpg/skill.rb'
load 'eidolon/rgss/rpg/state.rb'
load 'eidolon/rgss/rpg/system.rb'
load 'eidolon/rgss/rpg/system/test_battler.rb'
load 'eidolon/rgss/rpg/system/words.rb'
load 'eidolon/rgss/rpg/tileset.rb'
load 'eidolon/rgss/rpg/troop.rb'
load 'eidolon/rgss/rpg/troop/member.rb'
load 'eidolon/rgss/rpg/troop/page.rb'
load 'eidolon/rgss/rpg/troop/page/condition.rb'
load 'eidolon/rgss/rpg/weapon.rb'