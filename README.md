# Events App

[![Ruby Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop-hq/rubocop)

## Table of Contents

- [Events App](#events-app)
  - [Table of Contents](#table-of-contents)
  - [Technologies](#technologies)
  - [Installation](#installation)
  - [Setup](#setup)
  - [Usage](#usage)
  - [Running Tests](#running-tests)
  - [Status](#status)
  - [Contributing](#contributing)
  - [License](#license)

## Technologies

- Ruby Version 2.6.6
- Rails 6.0
- [Devise](https://github.com/heartcombo/devise)
- [Dotenv Rails](https://github.com/bkeepers/dotenv)
- [Pagy](https://github.com/ddnexus/pagy)
- [PostgreSQL](https://github.com/ged/ruby-pg)
- Testing:
  - [Capybara](https://github.com/teamcapybara/capybara)
  - [Database Cleaner](https://github.com/DatabaseCleaner/database_cleaner)
  - [Factory Bot Rails](https://github.com/thoughtbot/factory_bot_rails)
  - [Faker](https://github.com/faker-ruby/faker)
  - [Rails Controller Testing](https://github.com/rails/rails-controller-testing)
  - [RSpec Rails](https://github.com/rspec/rspec-rails)
  - [Shoulda Matchers](https://github.com/thoughtbot/shoulda-matchers)
  - [Spring-Commands-Rspec](https://github.com/jonleighton/spring-commands-rspec)
- Linting/Formating:
  - [Rubocop](https://github.com/rubocop-hq/rubocop)
  - [Rubocop Performance](https://github.com/rubocop-hq/rubocop-performance)
  - [Rubocop Rails](https://github.com/rubocop-hq/rubocop-rails)
  - [Rubocop RSpec](https://github.com/rubocop-hq/rubocop-rspec)

## Installation

To install the project fork or clone this repo.

## Setup

To setup and run the project, first setup the database with the following:

```bash
rails db:setup
```

And then start up a local server using:

```bash
rails s
```

Once the server is up and running open up your browser and navigate to `localhost:3000`

## Usage

## Running Tests

This project uses [RSpec](https://github.com/rspec/rspec-rails) for testing, and through the [spring-commands-rspec gem](https://github.com/jonleighton/spring-commands-rspec) uses [Spring](https://github.com/rails/spring) to run tests.

To run tests:

- All tests:
  ```bash
  bin/rspec
  ```
- All tests from a specific directory:
  ```bash
  bin/rspec spec/models
  ```
- A specific file:
  ```bash
  bin/rspec spec/models/user_spec.rb
  ```

## Status

This project is currently a work in progress and will continue to be updated as time goes on.

## Contributing

## License
