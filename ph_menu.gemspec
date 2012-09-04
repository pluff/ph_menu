# -*- encoding: utf-8 -*-
require File.expand_path('../lib/ph_menu/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Pavel Shutin"]
  gem.email         = ["publicshady@gmail.com"]
  gem.description   = "Menu library for Rails apps"
  gem.summary       = "Flexible menu library for creating menus"
  gem.homepage      = "https://github.com/pluff/ph_menu"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "ph_menu"
  gem.require_paths = ["lib"]
  gem.version       = PhMenu::VERSION
end
