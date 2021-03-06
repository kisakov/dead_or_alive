$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "dead_or_alive/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "dead_or_alive"
  s.version     = DeadOrAlive::VERSION
  s.authors     = ["Alexander Petrov"]
  s.email       = ["apetrov@virool.com"]
  s.homepage    = "https://github.com/OBSLabs/dead_or_alive"
  s.summary     = "Keep track of adapters"
  s.description = "Keep track of adapters usage"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.18"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
