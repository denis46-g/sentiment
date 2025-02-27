# frozen_string_literal: true

require_relative "lib/sentiment/version"

Gem::Specification.new do |spec|
  spec.name          = "sentiment"
  spec.version       = Sentiment::VERSION
  spec.authors       = ["mmcs-sfedu"]
  spec.email         = ["poganesyan@sfedu.ru"]

  spec.summary       = "This gem makes an emotional assessment of the text"
  spec.description   = "gem makes an emotional assessment of the text which can be represented as estimates 0 or 1."
  spec.homepage      = "https://github.com/AKGRif/sentiment"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/mmcs-ruby/sentiment"
  spec.metadata["changelog_uri"] = "https://github.com/mmcs-ruby/sentiment/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency 'simplecov', "~> 0.3"
end
