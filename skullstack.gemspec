$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "skullstack/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "skullstack"
  s.version     = Skullstack::VERSION
  s.authors     = ["Matthew Black"]
  s.email       = ["m@madebyblack.com"]
  s.homepage    = "http://www.madebyblack.com"
  s.summary     = "Summary of Skullstack."
  s.description = "Description of Skullstack."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"

  s.add_development_dependency "sqlite3"
end
