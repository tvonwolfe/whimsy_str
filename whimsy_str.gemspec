# frozen_string_literal: true

require_relative 'lib/whimsy_str/version'

Gem::Specification.new do |gem|
  gem.name = 'whimsy_str'
  gem.version = VERSION
  gem.summary = 'Whimsical string transformations.'
  gem.description = <<~DESC
    A collection of whimsical methods for modifying strings.
  DESC
  gem.authors = ['Tony Von Wolfe']
  gem.email = ['tonyvonwolfe@gmail.com']
  gem.files = %w[whimsy_str.gemspec README.md LICENSE] + `git ls-files | grep -E '^(bin|lib)'`.split("\n")
  gem.executables = %w[sponge wavy]
  gem.homepage = 'https://github.com/tvonwolfe/whimsy_str'
  gem.license = 'Unlicense'
  gem.required_ruby_version = '>= 2.7.0'
end
