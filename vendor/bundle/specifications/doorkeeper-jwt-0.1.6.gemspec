# -*- encoding: utf-8 -*-
# stub: doorkeeper-jwt 0.1.6 ruby lib

Gem::Specification.new do |s|
  s.name = "doorkeeper-jwt".freeze
  s.version = "0.1.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Chris Warren".freeze]
  s.bindir = "exe".freeze
  s.date = "2016-02-17"
  s.description = "JWT token generator extension for Doorkeeper".freeze
  s.email = ["chris@expectless.com".freeze]
  s.homepage = "https://github.com/chriswarren/doorkeeper-jwt".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.2".freeze
  s.summary = "JWT token generator for Doorkeeper".freeze

  s.installed_by_version = "2.6.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<jwt>.freeze, [">= 1.5.2", "~> 1.5.2"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 1.8", "~> 1.8"])
      s.add_development_dependency(%q<rake>.freeze, [">= 10.0", "~> 10.0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 3.2", "~> 3.2.0"])
      s.add_development_dependency(%q<pry>.freeze, ["~> 0"])
    else
      s.add_dependency(%q<jwt>.freeze, [">= 1.5.2", "~> 1.5.2"])
      s.add_dependency(%q<bundler>.freeze, [">= 1.8", "~> 1.8"])
      s.add_dependency(%q<rake>.freeze, [">= 10.0", "~> 10.0"])
      s.add_dependency(%q<rspec>.freeze, [">= 3.2", "~> 3.2.0"])
      s.add_dependency(%q<pry>.freeze, ["~> 0"])
    end
  else
    s.add_dependency(%q<jwt>.freeze, [">= 1.5.2", "~> 1.5.2"])
    s.add_dependency(%q<bundler>.freeze, [">= 1.8", "~> 1.8"])
    s.add_dependency(%q<rake>.freeze, [">= 10.0", "~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, [">= 3.2", "~> 3.2.0"])
    s.add_dependency(%q<pry>.freeze, ["~> 0"])
  end
end
