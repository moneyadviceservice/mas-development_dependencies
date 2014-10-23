# MAS Development Dependencies

This gem provides shared setup and development dependencies management for
Money Advice Service projects. It provides common test framework setup and
Rake tasks to run tests.

## Content

The gem provides setup for:


Note:

You will need to have Node installed to run Karma.

## Installation

Add the gem in the Gemfile:

```ruby
group :development, :test do
  gem 'mas-development_dependencies'
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

[cucumber]: https://github.com/cucumber/cucumber
[karma]: http://karma-runner.github.io/0.12/index.html
[rspec]: https://github.com/rspec
[node]: http://nodejs.org/
