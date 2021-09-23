# frozen_string_literal: true

require_relative "lib/erb_escape/version"

Gem::Specification.new do |spec|
  spec.name          = "erb_escape"
  spec.version       = ErbEscape::VERSION
  spec.authors       = ["mollerhoj"]
  spec.email         = ["mollerhoj3@gmail.com"]

  spec.summary       = "A simple and fast tool to escape erb template to standard html."
  spec.description   = "ErbEscape uses the same regexp for parsing erb files as Erubi."
  spec.homepage      = "https://github.com/mollerhoj/erb_escape"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.6.0")

  spec.metadata["allowed_push_host"] = "http://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/mollerhoj/erb_escape"
  spec.metadata["changelog_uri"] = "https://github.com/mollerhoj/erb_escape/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_development_dependency "rspec"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
