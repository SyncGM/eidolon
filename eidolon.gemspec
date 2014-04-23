# Adding Eidolon's 'lib/' directory to the path directly.
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'eidolon/version'

Gem::Specification.new do |gem|
  # Basic gem information.
  gem.name     = 'eidolon'
  gem.version  = Eidolon::VERSION
  gem.authors  = ['Solistra', 'Enelvon']
  gem.email    = ['solistra@gmx.com', 'enelvon@gmail.com']
  gem.homepage = 'https://github.com/sesvxace/eidolon'
  gem.platform = Gem::Platform::RUBY
  gem.license  = 'MIT'
  
  # Gem summary and description.
  gem.summary     = 'Allows for the loading of RGSSx data into pure Ruby.'
  gem.description = %{
    Eidolon is a minimalistic recreation of the RGSSx hidden classes and data
    structures required to load RPG Maker data directly into pure Ruby.
  }.gsub(/\s+/, " ").strip
  
  # Development dependencies.
  { rake: '~> 10.1', rdoc: '~> 4.1', rspec: '~> 2.14' }.each do |dep, version|
    gem.add_development_dependency(dep.to_s, version)
  end
  
  # File and directory information.
  gem.files        = Dir.glob('lib/**/*') + %w(LICENSE README.md)
  gem.require_path = 'lib'
end
