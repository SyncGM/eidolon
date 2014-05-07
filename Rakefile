# Adding 'lib/' to the path directly.
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

# Rakefile requirements.
require 'bundler/gem_tasks'
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

desc 'Run spec:nested task'
task :spec => 'spec:nested'

# Default to quickly running RSpec tests.
task :default => 'spec:run'
