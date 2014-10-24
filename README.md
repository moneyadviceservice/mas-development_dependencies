# MAS Development Dependencies

This gem provides central point for all settings used within MAS.

## Installation

Add the gem in the Gemfile:

```ruby
group :development, :test do
  gem 'mas-development_dependencies'
end
```

## Generators

#### Rubocop

  linting for our Ruby projects. Allowing all projects that use this gem to easily addopt the coding standards within
  MAS.
  
  The gem already include rubocop and a generator to copy the standardised rubocop.yml file.

  `bundle exec rails g money_advice_service:rubocop:install`

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
