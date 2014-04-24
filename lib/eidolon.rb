require 'eidolon/version'

# == Eidolon
# This module provides methods for building the data structures used by the RPG
# Maker series of game development programs so that the serialized data may be
# loaded into an external Ruby implementation. The methods used are platform
# and dependency agnostic.
# 
# == Usage
# It is recommended that you explicitly declare which RGSS version Eidolon
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
# You will need to use the +Eidolon.destroy!+ method if you intend to use more
# than one RGSS version in a single Ruby session. On their own, the RGSSx data
# structures are inherently incompatible with one another -- as such, the
# previous data structures must be destroyed, which is what +Eidolon.destroy!+
# does for you.
# 
# == Example
#     require 'eidolon'
#     
#     # Building the RGSS3 (VX Ace) data structures.
#     Eidolon.rgss_version = 'RGSS3'
#     Eidolon.rgss_version # => "rgss3"
#     Eidolon.build        # => true
#     Eidolon.built?       # => true
#     
#     # Destroy the previously built RGSS3 data structures.
#     Eidolon.destroy!
#     Eidolon.built? # => false
#     
#     # Now we can build the RGSS (XP) data structures as well.
#     Eidolon.build(1) # => true
#     
#     # Obtaining an array of the built RGSSx structures.
#     Eidolon.built # => ["rgss", "rgss3"]
module Eidolon
  class << self
    # The RGSSx version used by Eidolon. This determines which data structures
    # to require in order to facilitate working with serialized RGSSx data.
    attr_reader :rgss_version
    
    # An array of the RGSS versions which have had their data structures built
    # by Eidolon.
    attr_reader :built
  end
  
  # Initialize the array of built RGSS versions.
  @built = []
  
  # Set the RGSS version used by Eidolon to the passed value. May be set to an
  # integer or representative string value for the desired RGSS version.
  # 
  # Examples:
  #    Eidolon.rgss_version = "RGSS3" # Sets the version to "rgss3".
  #    Eidolon.rgss_version = 1       # Sets the version to "rgss".
  def self.rgss_version=(value)
    return unless valid?(value)
    @rgss_version = transform(value)
  end
  
  # Builds the data structures for the desired RGSS version. Returns +true+ if
  # the data structures were built, +false+ otherwise. This is a safe method,
  # ensuring that only the data structures from a single RGSS version will be
  # built.
  def self.build(version = @rgss_version)
    return false if version.nil?
    built? ? false : build!(version)
  end
  
  # Forces building of the data structures for the desired RGSS version.
  # Returns +true+ if the data structures were built, +false+ otherwise.
  def self.build!(version = @rgss_version)
    return false if version.nil?
    self.rgss_version = version
    @built.push(@rgss_version).compact.sort!.uniq!
    load 'eidolon/rgssx/loader.rb'
    load "eidolon/#{@rgss_version}/loader.rb"
  rescue LoadError
    destroy!
    false
  end
  
  # Destroys the currently built RGSS data structures. Returns +true+ if the
  # data structures were destroyed, +false+ otherwise (normally, this method
  # will only return +false+ if there were no data structures to destroy).
  def self.destroy!
    true if Object.send(:remove_const, :RPG)
  rescue NameError
    false
  end
  
  # Returns +true+ if data structures have been built, +false+ otherwise.
  def self.built?
    Object.const_defined?(:RPG)
  end
  
  class << self
    private
    # Transforms the given value into an applicable string used to find the
    # appropriate RGSS version.
    def transform(version)
      if version =~ /^rgss(\d?)/i
        return 'rgss' if $1.empty?
        'rgss' << $1
      else
        return 'rgss' if version == 1
        'rgss' << version.to_s
      end
    end
  
    # Returns +true+ if a "loader.rb" file exists for the given RGSS version,
    # +false+ otherwise.
    def valid?(version)
      fn = File.dirname(__FILE__) << "/eidolon/#{transform(version)}/loader.rb"
      File.file?(fn)
    end
  end
end