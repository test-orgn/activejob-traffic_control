# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_job/traffic_control/version'

Gem::Specification.new do |spec|
  spec.name          = 'activejob-traffic_control'
  spec.version       = ActiveJob::TrafficControl::VERSION
  spec.authors       = ['Nick Elser']
  spec.email         = ['nick.elser@gmail.com']

  spec.summary       = 'Traffic control for ActiveJob'
  spec.description   = 'Traffic control for ActiveJob: Concurrency/enabling/throttling'
  spec.homepage      = 'https://www.activejobtrafficcontrol.com'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'activejob', '>= 5.2.0'
  spec.add_dependency 'activesupport', '>= 5.2.0'
  spec.add_dependency 'suo', '~> 0.3.0'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'connection_pool', '~> 2.0'
  spec.add_development_dependency 'minitest', '~> 5.14.1'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop', '~> 0.88.0'
end
