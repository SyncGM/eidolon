module RPG
  # == RGSSx
  # This class is present and consistent across all RGSS versions.
  # 
  # == AudioFile
  # Represents all audio files in RGSS; in RGSS2 and RGSS3, this provides the
  # superclass for all audio types (BGM, BGS, ME, and SE).
  class AudioFile
    attr_accessor :name
    attr_accessor :volume
    attr_accessor :pitch
  end
end