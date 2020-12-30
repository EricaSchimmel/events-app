# Events App

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
- [Rails 6](https://github.com/rails/rails)
- [PostgreSQL](https://github.com/ged/ruby-pg)
- [Devise](https://github.com/heartcombo/devise) - Authentication
- [Pagy](https://github.com/ddnexus/pagy)
- Testing:
  - [RSpec Rails](https://github.com/rspec/rspec-rails) - Testing Framework
  - [Capybara](https://github.com/teamcapybara/capybara)
  - [Factory Bot Rails](https://github.com/thoughtbot/factory_bot_rails)
  - [Database Cleaner](https://github.com/DatabaseCleaner/database_cleaner)
  - [Shoulda Matchers](https://github.com/thoughtbot/shoulda-matchers)
  - [Faker](https://github.com/faker-ruby/faker)
  - [Spring-Commands-Rspec](https://github.com/jonleighton/spring-commands-rspec)

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
