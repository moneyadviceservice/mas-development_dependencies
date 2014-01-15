# MAS Development Dependencies

This gem provides shared setup and development dependencies management for
Money Advice Service projects. It provides common test framework setup and
Rake tasks to run tests.

## Content

The gem provides setup for:

* [Cucumber]
* [RSpec]
* [Konacha]

## Installation

Add the gem in the Gemfile:

```ruby
group :development, :test do
  gem 'mas-development_dependencies'
end
```

### Cucumber

Run the generator:

```sh
$ rails generate money_advice_service:cucumber:install
```

You can then add custom project specific setup.


### RSpec

Run the generator:

```sh
$ rails generate money_advice_service:rspec:install
```

You can then add custom project specific setup.


### Konacha

Run the generator:

```sh
$ rails generate money_advice_service:konacha:install
```

You can then add custom project specific setup.


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

[cucumber]: https://github.com/cucumber/cucumber
[konacha]: https://github.com/jfirebaugh/konacha
[rspec]: https://github.com/rspec
