# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll/slim/version'

Gem::Specification.new do |gem|
  gem.name = 'jekyll-slim'
  gem.version = Jekyll::Slim::VERSION
  gem.authors = ['Reda Lemeden', 'Francesco Belladonna', 'Daniel Menlder']
  gem.email = ['reda@thoughtbot.com', 'francesco.belladonna@gmail.com', 'mail@daniel-mendler.de']
  gem.description = %q{Slim html converter for Jekyll}
  gem.summary = %q{Slim-lang support for Jekyll. Handles includes and layouts as well.}
  gem.homepage = 'https://github.com/slim-template/jekyll-slim'

  gem.files = `git ls-files`.split($/)
  gem.executables = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  gem.test_files = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.required_ruby_version = '~>2.2'

  gem.add_runtime_dependency 'jekyll', '~> 3.0'
  gem.add_runtime_dependency 'sliq'

  gem.add_development_dependency('rake')
  gem.add_development_dependency('bundler')
  gem.add_development_dependency('minitest-reporters')
  gem.add_development_dependency('rubocop', '~>0.55')
end
