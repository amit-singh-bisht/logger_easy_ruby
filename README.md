# LoggerEasy
<div>
    <a href="https://rubygems.org/gems/logger_easy">
        <img alt="GEM Version" src="https://img.shields.io/gem/v/logger_easy?color=38C160&logo=ruby&logoColor=FE1616">
    </a>
    <a href="https://rubygems.org/gems/logger_easy">
        <img alt="Gem Downloads" src="https://img.shields.io/gem/dt/logger_easy?color=38C160&logo=ruby&logoColor=FE1616">
    </a>
</div>

<br>

LoggerEasy provides you a way to easily log your activity

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add logger_easy

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install logger_easy

## Usage

Initialize the module by passing a file name where you want the logs to be appended, if no file_name is passed in parameter, it will create a file with name as `logger_easy.log` in the current working directory
```ruby
def initialize(log_file_name = 'logger_easy.log')
  @log_file_name = log_file_name
  @logger = Logger.new(log_file_name)
end
```

Log info in file
```ruby
def log_info(message)
  @logger ||= Logger.new(@log_file_name)
  @logger.info(message)
end
```

Log debug in file
```ruby
def log_debug(message)
  @logger ||= Logger.new(@log_file_name)
  @logger.debug(message)
end
```

Log error in file
```ruby
def log_error(message)
  @logger ||= Logger.new(@log_file_name)
  @logger.error(message)
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/logger_easy.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
