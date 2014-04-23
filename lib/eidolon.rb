# == Eidolon
# This module provides methods for building the data structures used by the RPG
# Maker series of game development programs so that the serialized data may be
# loaded into an external Ruby implementation. The methods used are platform
# and dependency agnostic.
# 
# == Usage
# It is recommended that you explicitly decalre which RGSS version Eidolon
# should use before building the RGSSx data structures required; this is done
# through the +Eidolon.rgss_version=+ method. This method accepts both integer
# and representative string values -- for example, passing it an argument of
# 1 or "RGSS" will both set the Eidolon RGSS version to the appropriate value.
# Recognized RGSS versions are "RGSS" (XP), "RGSS2" (VX), and "RGSS3" (VX Ace).
# 
# After explicitly requesting the desired RGSS version, you will want to build
# the desired data structures with the +Eidolon.build+ method. This will create
# the data structures for the specified RGSS version for use by the currently
# running Ruby implementation. Note that the +Eidolon.build+ method will only
# build data structures *once*.
# 
# You may use the +Eidolon.force_build!+ method if you need to build the RGSS
# data structures again for any reason -- just be aware that this is likely to
# mutate the default data structures (or fail entirely).
# 
# == Example
#     require 'eidolon'
#     
#     # Building the RGSS3 (VX Ace) data structures.
#     Eidolon.rgss_version = 'rgss3'
#     Eidolon.rgss_version # => "RGSS3"
#     Eidolon.build        # => true
#     Eidolon.built?       # => true
#     
#     # Forcing a build of the RGSS (XP) data structures as well.
#     Eidolon.rgss_version = 1
#     Eidolon.rgss_version # => "RGSS"
#     Eidolon.build        # => false
#     Eidolon.force_build! # => true
module Eidolon
  class << self
    # The RGSSx version used by Eidolon. This determines which data structures
    # to require in order to facilitate working with serialized RGSSx data.
    attr_reader :rgss_version
  end
  
  # Set the RGSS version to build as "RGSS3" by default.
  @rgss_version = 'RGSS3'
  
  # Set the RGSS version used by Eidolon to the passed value. May be set to an
  # integer or representative string value for the desired RGSS version.
  # 
  # Examples:
  #    Eidolon.rgss_version = "rgss3" # Sets the version to "RGSS3".
  #    Eidolon.rgss_version = 1       # Sets the version to "RGSS".
  def self.rgss_version=(value)
    value = if value =~ /^rgss(\d?)$/i
      $1.empty? ? 1 : $1
    else value end.to_i
    return unless value.between?(1, 3)
    @rgss_version = "RGSS#{value if value > 1}"
  end
  
  # Builds the data structures for the desired RGSS version. Returns +true+ if
  # the data structures were built, +false+ otherwise. This is a safe method,
  # ensuring that only the data structures from a single RGSS version will be
  # built.
  def self.build(version = @rgss_version)
    built? ? false : force_build!(version)
  end
  
  # Forces building of the data structures for the desired RGSS version.
  # **Note:** This inherently changes the default data structures if multiple
  # RGSS versions are built.
  def self.force_build!(version = @rgss_version)
    @built = true
    self.rgss_version = version unless version == @rgss_version
    require 'eidolon/rgssx'
    require "eidolon/#{@rgss_version.downcase}"
  end
  
  # Returns +true+ if data structures have been built, +false+ otherwise.
  def self.built?
    @built ? true : false
  end
end