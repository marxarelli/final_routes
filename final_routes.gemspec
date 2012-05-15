$:.push File.expand_path('../lib', __FILE__)

require 'final_routes/version'

Gem::Specification.new do |s|
  s.name = "final_routes"
  s.summary = "Final routes in Rails."
  s.description = "Adds support in Rails apps for final routes, " +
    "routes that are drawn after all engines have drawn their own."
  s.version = FinalRoutes::VERSION

  s.platform = Gem::Platform::RUBY
  s.authors = ["Daniel Duvall"]
  s.email = ["dan@mutual.io"]
  s.homepage = 'https://github.com/marxarelli/final_routes'

  s.files = Dir["{lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "Gemfile", "README.rdoc"]
  s.require_paths = ["lib"]

  s.add_runtime_dependency "rails", "~> 3.2.3"
end
