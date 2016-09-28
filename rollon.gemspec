$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rollon/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rollon"
  s.version     = Rollon::VERSION
  s.authors     = ["Max Calabrese"]
  s.email       = ["max.calabrese@ymail.com"]
  s.homepage    = "https://github.com/maxcal/rollon"
  s.summary     = "A simple role library for Rails."
  s.description = "A simple role library for Rails."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"

  s.add_development_dependency "yard"
  s.add_development_dependency "rails-dummy"
  s.add_development_dependency "kramdown"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara"
  s.add_development_dependency "database_cleaner"
  s.add_development_dependency 'factory_girl_rails'
end
