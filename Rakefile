# Adding Eidolon's 'lib/' directory to the path directly.
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eidolon/version'
require 'rake/clean'
require 'yard'

# Using `rake clean` instead of `clobber` in this project, so load up `CLEAN`
# appropriately. Assume that `rake clean` should leave the project in a "just
# cloned from repository" state.
files = File.readlines('.gitignore').map(&:strip).select! do |file|
  file.end_with?('/') ? File.directory?(file) : File.exist?(file)
end
CLEAN.include(*CLOBBER, *files)

# Enable the use of YARD for documentation.
YARD::Rake::YardocTask.new do |yard|
  yard.options = [
    '--title',  'Eidolon RGSSx Documentation',
    '--readme', 'README.md',
    '--files',  'LICENSE'
  ]
end

# YARD-related task namespace.
namespace :yard do
  # Remove generated YARD documentation if the 'doc/' directory exists.
  desc 'Remove YARD HTML files'
  task :clean do
    rm_r('doc/') if File.directory?('doc/')
  end
end

# Remove tasks that won't be used or will be overwritten.
Rake::Task[:clobber].clear

# RSpec-related task namespace.
namespace :spec do
  desc 'Run detailed RSpec tests'
  task :nested do
    sh 'rspec spec --color --format nested'
  end
  
  desc 'Run RSpec tests (`rake` default task)'
  task :run do
    sh 'rspec spec --color'
  end
end

# Namespace related to gem building, pushing, and maintenance.
namespace :gem do
  directory 'pkg'
  
  desc 'Build .gem file in pkg/ from gemspec'
  task :build => :pkg do
    if File.exist?("pkg/eidolon-#{Eidolon::VERSION}.gem")
      puts("RubyGem already exists: pkg/eidolon-#{Eidolon::VERSION}.gem")
    else
      sh 'gem build eidolon.gemspec'
      mv "eidolon-#{Eidolon::VERSION}.gem", 'pkg/'
    end
  end
  
  desc 'Remove built gem files and pkg/ directory'
  task :clean do
    rm_r 'pkg/' if File.directory?('pkg/')
  end

  desc 'Force build of gem in pkg/ from gemspec'
  task :force => :pkg do
    sh 'gem build eidolon.gemspec'
    mv "eidolon-#{Eidolon::VERSION}.gem", 'pkg/'
  end
  
  desc 'Build and install latest local gem'
  task :install => :build do
    sh "gem install --local pkg/eidolon-#{Eidolon::VERSION}.gem"
  end
  
  desc 'Build and push latest gem to rubygems.org'
  task :release => :build do
    sh "gem push pkg/eidolon-#{Eidolon::VERSION}.gem"
  end
  
  desc 'Uninstall all eidolon gems'
  task :uninstall do
    sh 'gem uninstall --all eidolon'
  end
end

# Shortcut tasks.
desc 'Run gem:build task'
task :gem => 'gem:build'

desc 'Run spec:nested task'
task :spec => 'spec:nested'

# Default to quickly running RSpec tests.
task :default => 'spec:run'
