require_relative 'lib/fast_while/version'

Gem::Specification.new do |spec|
  spec.name          = "fast_while"
  spec.version       = FastWhile::VERSION
  spec.authors       = ["Vitaly Simakov"]
  spec.email         = ["faetonvs@gmail.com"]

  spec.summary       = %q{Clean code and faster loop by while}
  spec.description   = %q{Extend array class by while method}
  spec.homepage      = "https://github.com/rubywarlock/fast_while"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://github.com/rubywarlock/fast_while"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/rubywarlock/fast_while"
  spec.metadata["changelog_uri"] = "https://github.com/rubywarlock/fast_while/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
