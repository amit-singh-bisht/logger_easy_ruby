# frozen_string_literal: true

require_relative 'lib/logger_easy/version'

Gem::Specification.new do |spec|
  spec.name = 'logger_easy'
  spec.version = LoggerEasy::VERSION
  spec.authors = ['amit-singh-bisht']
  spec.email = ['bishtamitsingh98@gmail.com']

  spec.summary = 'LoggerEasy provides you a way to easily log your activity. https://bit.ly/ld_doc'
  spec.description = 'LoggerEasy provides you a way to easily log your activity. https://bit.ly/ld_doc'
  spec.homepage = 'https://github.com/amit-singh-bisht/logger_easy_ruby'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.5.0'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/amit-singh-bisht/logger_easy_ruby'
  spec.metadata['changelog_uri'] = 'https://github.com/amit-singh-bisht/logger_easy_ruby/blob/master/README.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  spec.add_dependency 'logger', '~> 1.5', '>= 1.5.1'
  spec.add_dependency 'rubocop', '~> 1.21'

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
