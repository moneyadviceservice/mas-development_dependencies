# MAS Development Dependencies

This gem provides shared setup and development dependencies management for
Money Advice Service projects. It provides common test framework setup and
Rake tasks to run tests.

## Content

The gem provides setup for:

* [Cucumber]
* [RSpec]
* [Karma]
* [Rubocop]

Note:

You will need to have Node installed to run Karma.

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


### Karma

Run the generator:

```sh
$ rails generate money_advice_service:karma:install
```

Install the NPM modules:

```sh
$ rake karma:install
```

Run Karma Continously:

```sh
$ rake karma:run
```

Run Karma Once (Compatible with CI):

```sh
$ rake karma:run_once
```

You can configure the `spec/javascripts/karma.conf.js` file for project specific stuff. You can additionally require JS files sprockets style in the `spec/javascripts/application_spec.js` like so:

```javascript
/* Require your assets here */

//= require jquery
//= require cow
```

### Rubocop

Run the generator:

```sh
$ rails generate money_advice_service:rubocop:install
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
