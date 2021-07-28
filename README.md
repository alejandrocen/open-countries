# OpenCountries

[![open-countries](https://github.com/alejandrocen/open-countries/actions/workflows/ci.yml/badge.svg)](https://github.com/alejandrocen/open-countries/actions/workflows/ci.yml)

OpenCountries provide countries information via a REST API.

## Links

* [Documentation](https://alejandrocen.github.io/open-countries/)

## Requirements

- Ruby 2.7+.
- MongoDB 4.4+.

## Installation

```sh
bundle install
```

## Development

Start the web server:

```sh
rackup -p 9292
```

### Rake tasks

Show tasks:

```sh
bundle exec rake -T
```

Import countries information:

```sh
bundle exec rake countries:import
```

Show routes:

```sh
bundle exec rake routes
```

Run the linter:

```sh
bundle exec rake rubocop
```

Run all tests:

```sh
bundle exec rake test
```

### Command line

Start command line:

```sh
ruby bin/console
```

Returns the total count of all countries:

```ruby
Country.count
```
