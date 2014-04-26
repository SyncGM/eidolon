require 'eidolon/version'

# == Eidolon
# This module provides methods for creating and destroying the data structures
# used by the RPG Maker series of game development programs so that their data
# may be loaded into an external Ruby implementation. The methods used are
# platform and dependency agnostic.
# 
# == Usage
# It is recommended that you explicitly declare which RGSS version Eidolon
# should use before building the RGSSx data structures required; this is done
# through the +Eidolon.rgss_version=+ method. This method accepts both integer
# and representative string or symbol values -- for example, passing it an
# argument of 1, 'RGSS2', or :rgss3 will set the Eidolon RGSS version to the
# appropriate value.
# 
# After explicitly requesting the desired RGSS version, you will want to build
# the desired data structures with the +Eidolon.build+ method. This will create
# the data structures for the specified RGSS version for use by the currently
# running Ruby implementation. Note that the +Eidolon.build+ method will only
# build data structures *once*. You may also explicitly pass an RGSS version to
# build as an argument to this method.
# 
# Be aware that you will need to use the +Eidolon.destroy!+ method if you wish
# to use more than one RGSS version in a single Ruby session. On their own, the
# RGSSx data structures are inherently incompatible with one another (raising
# superclass mismatch errors) -- as such, the previous data structures must be
# destroyed, which the +Eidolon.destroy!+ method does for you.
# 
# In addition to this, you may pass a block to the +Eidolon.build+ method which
# automatically creates and destroys the data structures for the passed RGSS
# version. The specified RGSS version is available inside of the block and
# destroyed immediately after the block returns. Using a block will also return
# the value of the *block* rather than the usual +true+ or +false+ value.
# 
# == Examples
#     require 'eidolon'
#     
#     # Equivalent to the RGSSx method of the same name.
#     def load_data(filename)
#       File.open(filename, 'rb') { |data| Marshal.load(data) }
#     end
#     
#     # Build the RGSS3 (VX Ace) data structures and obtain the project data of
#     # an unencrypted RMVX Ace game.
#     Eidolon.rgss_version = 'RGSS3'
#     Eidolon.build  # => true
#     Eidolon.built? # => true
#     
#     # Initialize an array for storing the data, then fill it.
#     @rgss3_data = []
#     Dir.glob('**/*.rvdata2') { |data| @rgss3_data << load_data(data) }
#     @rgss3_data # => [[nil, #<RPG::Actor...> ... ] ... ]
#     
#     # Destroy the previously built RGSS3 data structures.
#     Eidolon.destroy! # => true
#     Eidolon.built?   # => false
#     
#     # Now we can build the RGSS (XP) data structures with a block and return
#     # the project data for an unencrypted RMXP game.
#     Eidolon.build(1) do
#       # Initialize an array for storing the data, fill it, then use it as the
#       # block's return value.
#       @xp_data = []
#       Dir.glob('**/*.rxdata') { |data| @xp_data << load_data(data) }
#       @xp_data
#     end            # => [[nil, #<RPG::Actor...> ... ] ... ]
#     Eidolon.built? # => false
module Eidolon
  class << self
    # The default RGSS version for Eidolon to build if no argument is given to
    # the +Eidolon.build+ method. This is +nil+ by default.
    attr_accessor :rgss_version
  end
  
  # Builds the data structures for the desired RGSS version. Returns +true+ if
  # the data structures were built, +false+ otherwise. This is a safe method,
  # ensuring that only the data structures from a single RGSS version will be
  # built.
  # 
  # If a block is given, the data structures are built before the block is
  # executed and then automatically destroyed. This is particularly useful for
  # temporarily accessing RGSSx data, and returns the return value of the given
  # block.
  def self.build(version = @rgss_version)
    return false if version.nil? || built?
    begin
      load 'eidolon/rgssx/loader.rb'
      load "eidolon/#{transform(version)}/loader.rb"
      return true unless block_given?
    rescue ArgumentError, LoadError
      destroy!
      return false
    end
    return_value = yield
    destroy!
    return_value
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
    # appropriate RGSS version. Returns the transformed string. Raises an
    # +ArgumentError+ if the string could not be transformed.
    def transform(version)
      return version if version == (string = 'rgss')
      if version =~ /^rgss(\d?)/i
        string << $1 unless $1.empty?
      else
        string << version.to_s unless version.between?(0, 1)
      end
      string
    rescue
      raise ArgumentError.new("'#{version}' is an invalid RGSS version.")
    end
  end
end