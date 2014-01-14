mas-development_dependencies
============================

This gem provides shared setup and development dependencies management for Money Advice Service projects. It
provides common test framework setup and rake tasks to run tests.

Content
=======

The gem provides setup for:

* Cucumber
* RSpec
* Konacha

Instalation
===========

Add the gem in the Gemfile:

```Ruby
group :development, :test do
  gem 'mas-development_dependencies'
end
```

Cucumber
========

The ```features/support/env.rb``` file should include the shared setup: 

```Ruby 
require 'mas/development_dependencies/cucumber/env'
```

Custom project specific setup can follow after.


RSpec
=====

The ```spec/spec_helper.rb``` file should include the shared setup:

```Ruby 
require 'mas/development_dependencies/rspec/spec_helper'
```

Custom project specific setup can follow after.
