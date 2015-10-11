$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "statify_model/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "statify_model"
  s.version     = StatifyModel::VERSION
  s.authors     = ["shikshachauhan"]
  s.email       = ["chauhanshiksha1@vinsol.com"]
  s.homepage      = 'https://github.com/shikshachauhan/statify_model'
  s.summary     = "StatifyModel adds Enable and Disable attributes and helper methods on the model calling has_status method."
  s.description = "Enable and Disable attributes and helper methods on the model calling has_status method are added."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_runtime_dependency 'rails', '~> 4.2', '>= 4.2.4'
  s.add_development_dependency "mysql2", '~> 0'
end
