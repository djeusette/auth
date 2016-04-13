# -*- encoding: utf-8 -*-
# stub: doorkeeper 3.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "doorkeeper".freeze
  s.version = "3.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Felipe Elias Philipp".freeze, "Tute Costa".freeze]
  s.date = "2015-12-23"
  s.description = "Doorkeeper is an OAuth 2 provider for Rails and Grape.".freeze
  s.email = ["tutecosta@gmail.com".freeze]
  s.homepage = "https://github.com/doorkeeper-gem/doorkeeper".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.2".freeze
  s.summary = "OAuth 2 provider for Rails and Grape".freeze

  s.installed_by_version = "2.6.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>.freeze, [">= 3.2"])
      s.add_development_dependency(%q<rspec-rails>.freeze, ["~> 3.4.0"])
      s.add_development_dependency(%q<capybara>.freeze, ["~> 2.3.0"])
      s.add_development_dependency(%q<generator_spec>.freeze, ["~> 0.9.0"])
      s.add_development_dependency(%q<factory_girl>.freeze, ["~> 4.5.0"])
      s.add_development_dependency(%q<timecop>.freeze, ["~> 0.7.0"])
      s.add_development_dependency(%q<database_cleaner>.freeze, ["~> 1.3.0"])
    else
      s.add_dependency(%q<railties>.freeze, [">= 3.2"])
      s.add_dependency(%q<rspec-rails>.freeze, ["~> 3.4.0"])
      s.add_dependency(%q<capybara>.freeze, ["~> 2.3.0"])
      s.add_dependency(%q<generator_spec>.freeze, ["~> 0.9.0"])
      s.add_dependency(%q<factory_girl>.freeze, ["~> 4.5.0"])
      s.add_dependency(%q<timecop>.freeze, ["~> 0.7.0"])
      s.add_dependency(%q<database_cleaner>.freeze, ["~> 1.3.0"])
    end
  else
    s.add_dependency(%q<railties>.freeze, [">= 3.2"])
    s.add_dependency(%q<rspec-rails>.freeze, ["~> 3.4.0"])
    s.add_dependency(%q<capybara>.freeze, ["~> 2.3.0"])
    s.add_dependency(%q<generator_spec>.freeze, ["~> 0.9.0"])
    s.add_dependency(%q<factory_girl>.freeze, ["~> 4.5.0"])
    s.add_dependency(%q<timecop>.freeze, ["~> 0.7.0"])
    s.add_dependency(%q<database_cleaner>.freeze, ["~> 1.3.0"])
  end
end
