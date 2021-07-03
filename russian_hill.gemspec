require_relative "lib/russian_hill/version"

Gem::Specification.new do |spec|
  spec.name        = "russian_hill"
  spec.version     = RussianHill::VERSION
  spec.authors     = ["Rafe Rosen"]
  spec.email       = ["rafe@existentialmutt.com"]
  spec.homepage    = "http://github.com/existentialmutt/russian_hill"
  spec.summary     = "Views for CableReady's cable_car"
  spec.description = "Provides JBuilder-like views for building CableReady operations."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "http://github.com/existentialmutt/russian_hill"
  spec.metadata["changelog_uri"] = "http://github.com/existentialmutt/russian_hill/releases"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.1.4"
end
