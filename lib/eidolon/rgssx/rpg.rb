require 'eidolon/rgssx/rpg/animation'
require 'eidolon/rgssx/rpg/animation/frame'
require 'eidolon/rgssx/rpg/animation/timing'
require 'eidolon/rgssx/rpg/audio_file'
require 'eidolon/rgssx/rpg/common_event'
require 'eidolon/rgssx/rpg/event'
require 'eidolon/rgssx/rpg/event/page'
require 'eidolon/rgssx/rpg/event/page/condition'
require 'eidolon/rgssx/rpg/event/page/graphic'
require 'eidolon/rgssx/rpg/event_command'
require 'eidolon/rgssx/rpg/map'
require 'eidolon/rgssx/rpg/map_info'
require 'eidolon/rgssx/rpg/move_command'
require 'eidolon/rgssx/rpg/move_route'
require 'eidolon/rgssx/rpg/troop'
require 'eidolon/rgssx/rpg/troop/member'
require 'eidolon/rgssx/rpg/troop/page'
require 'eidolon/rgssx/rpg/troop/page/condition'

# == RPG
# This module serves as the top-level namespace for all of the generic data
# structures used by all versions of RGSS utilized by the RPG Maker series.
# The structures within this module serve entirely as containers for modifiable
# (but static) game data such as the player characters, skills, equipment, and
# so on.
# 
# All of the data contained within these structures is essentially data which
# is modified directly by end-users within the RPG Maker's graphical user
# interface. This data is then taken by the core RGSS scripts available to each
# entry in the Maker series and, in most cases, used to create instances which
# reference the information within the applicable data structure.
# 
# Essentially, these structures serve as a simple wrapper around the Ruby core
# of the RPG Maker series and its C++ user interface.
module RPG
end