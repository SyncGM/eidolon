require 'coveralls'
Coveralls.wear!

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'eidolon'

def load_data(file)
  path = File.join(File.expand_path('../../assets', __FILE__) << "/#{file}")
  File.open(path, 'rb') { |f| return Marshal.load(f) }
end