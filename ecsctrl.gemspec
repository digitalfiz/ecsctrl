# coding: utf-8
# frozen_string_literal: true
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ecsctrl/version'

Gem::Specification.new do |spec|
  spec.name          = 'ecsctrl'
  spec.version       = Ecsctrl::VERSION
  spec.authors       = ['Marc Seiler']
  spec.email         = ['mseiler@gmail.com']

  spec.summary       = 'ECS Controller'
  spec.description   = 'A gem to help control AWS ECS from the commandline'
  spec.homepage      = 'https://marcseiler.com'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split('\x0').reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'bin'
  spec.executables   = ['ecs']
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
end
