# -*- encoding: utf-8 -*-
# stub: wine_bouncer 0.5.1 ruby lib

Gem::Specification.new do |s|
  s.name = "wine_bouncer".freeze
  s.version = "0.5.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Antek Drzewiecki".freeze]
  s.date = "2016-01-14"
  s.email = ["antek.drzewiecki@altran.com".freeze]
  s.homepage = "".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.2".freeze
  s.summary = "A Ruby gem that allows Oauth2 protection with Doorkeeper for Grape Api's".freeze

  s.installed_by_version = "2.6.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<grape>.freeze, ["< 1.0", "~> 0.10"])
      s.add_runtime_dependency(%q<doorkeeper>.freeze, ["< 4.0", ">= 1.4"])
      s.add_development_dependency(%q<railties>.freeze, [">= 0"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.7"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rspec-rails>.freeze, ["~> 3.2.0"])
      s.add_development_dependency(%q<factory_girl>.freeze, ["~> 4.4.0"])
      s.add_development_dependency(%q<generator_spec>.freeze, ["~> 0.9.0"])
      s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_development_dependency(%q<database_cleaner>.freeze, ["~> 1.3.0"])
      s.add_development_dependency(%q<rubocop>.freeze, ["= 0.35.1"])
      s.add_development_dependency(%q<yard>.freeze, ["~> 0.8.7"])
    else
      s.add_dependency(%q<grape>.freeze, ["< 1.0", "~> 0.10"])
      s.add_dependency(%q<doorkeeper>.freeze, ["< 4.0", ">= 1.4"])
      s.add_dependency(%q<railties>.freeze, [">= 0"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.7"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rspec-rails>.freeze, ["~> 3.2.0"])
      s.add_dependency(%q<factory_girl>.freeze, ["~> 4.4.0"])
      s.add_dependency(%q<generator_spec>.freeze, ["~> 0.9.0"])
      s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_dependency(%q<database_cleaner>.freeze, ["~> 1.3.0"])
      s.add_dependency(%q<rubocop>.freeze, ["= 0.35.1"])
      s.add_dependency(%q<yard>.freeze, ["~> 0.8.7"])
    end
  else
    s.add_dependency(%q<grape>.freeze, ["< 1.0", "~> 0.10"])
    s.add_dependency(%q<doorkeeper>.freeze, ["< 4.0", ">= 1.4"])
    s.add_dependency(%q<railties>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.7"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec-rails>.freeze, ["~> 3.2.0"])
    s.add_dependency(%q<factory_girl>.freeze, ["~> 4.4.0"])
    s.add_dependency(%q<generator_spec>.freeze, ["~> 0.9.0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_dependency(%q<database_cleaner>.freeze, ["~> 1.3.0"])
    s.add_dependency(%q<rubocop>.freeze, ["= 0.35.1"])
    s.add_dependency(%q<yard>.freeze, ["~> 0.8.7"])
  end
end
