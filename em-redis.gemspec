require File.expand_path('../lib/em-redis/version.rb', __FILE__)

Gem::Specification.new do |s|
  s.name = "gregorymostizky-em-redis"
  s.version = EMRedis::VERSION
  s.authors = ['Jonathan Broad', 'Eugene Pimenov', 'Stephan Maka', 'Julien Genestoux']
  s.homepage = 'http://github.com/gregorymostizky/em-redis'

  s.files = Dir['lib/**/*', '*.txt']
  s.require_paths = ["lib"]
  s.summary = "An eventmachine-based implementation of the Redis protocol"
  s.description = s.summary

  s.add_dependency "eventmachine"
  s.add_development_dependency "bundler", "~>1.0.rc.6"
end
