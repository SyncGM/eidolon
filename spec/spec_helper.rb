require 'coveralls'
Coveralls.wear!

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'eidolon'

def load_data(file)
  path = File.join(eidolon_path, "/assets/#{file}")
  File.open(path, 'rb') { |f| return Marshal.load(f) }
end

def eidolon_path
  File.expand_path('../..', __FILE__)
end