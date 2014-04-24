require 'eidolon/rgssx/rpg/audio_file'

module RPG
  # == RGSS3
  # This data structure is specific to RGSS3 (VX Ace).
  # 
  # == BGM
  # The data class for background music.
  class BGM < AudioFile
    attr_accessor :pos
  end
end