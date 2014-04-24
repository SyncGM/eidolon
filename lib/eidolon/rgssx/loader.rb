# This file loads all of the generic internal data structures used by all of
# the entries in the RPG Maker series (XP, VX, and VX Ace).
# 
# These structures are generic enough that they can be loaded in any order and
# remain fully functional (unlike the specific data structures for VX and Ace,
# which require some ordering).

require 'eidolon/rgssx'

load 'eidolon/rgssx/rpg/animation.rb'
load 'eidolon/rgssx/rpg/animation/frame.rb'
load 'eidolon/rgssx/rpg/animation/timing.rb'
load 'eidolon/rgssx/rpg/audio_file.rb'
load 'eidolon/rgssx/rpg/common_event.rb'
load 'eidolon/rgssx/rpg/event.rb'
load 'eidolon/rgssx/rpg/event/page.rb'
load 'eidolon/rgssx/rpg/event/page/condition.rb'
load 'eidolon/rgssx/rpg/event/page/graphic.rb'
load 'eidolon/rgssx/rpg/event_command.rb'
load 'eidolon/rgssx/rpg/map.rb'
load 'eidolon/rgssx/rpg/map_info.rb'
load 'eidolon/rgssx/rpg/move_command.rb'
load 'eidolon/rgssx/rpg/move_route.rb'
load 'eidolon/rgssx/rpg/troop.rb'
load 'eidolon/rgssx/rpg/troop/member.rb'
load 'eidolon/rgssx/rpg/troop/page.rb'
load 'eidolon/rgssx/rpg/troop/page/condition.rb'