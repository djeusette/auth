# -*- encoding: utf-8 -*-
# stub: grape-roar 0.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "grape-roar".freeze
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Daniel Doubrovkine".freeze]
  s.date = "2014-12-31"
  s.description = "Use Roar with Grape".freeze
  s.email = ["dblock@dblock.org".freeze]
  s.homepage = "http://github.com/dblock/grape-roar".freeze
  s.rubygems_version = "2.6.2".freeze
  s.summary = "Enable Resource-Oriented Architectures in Grape API DSL".freeze

  s.installed_by_version = "2.6.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<grape>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<roar>.freeze, [">= 1.0"])
    else
      s.add_dependency(%q<grape>.freeze, [">= 0"])
      s.add_dependency(%q<roar>.freeze, [">= 1.0"])
    end
  else
    s.add_dependency(%q<grape>.freeze, [">= 0"])
    s.add_dependency(%q<roar>.freeze, [">= 1.0"])
  end
end
