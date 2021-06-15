# OpenCountries

[![open-countries](https://github.com/alejandrocen/open-countries/actions/workflows/ci.yml/badge.svg)](https://github.com/alejandrocen/open-countries/actions/workflows/ci.yml)

OpenCountries provide countries information via a REST API.

## Documentation

...

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
rackup
```

Run all tests:

```sh
rake test
```

Run the linter:

```sh
rake rubocop
```
### Command line

Start command line:

```sh
ruby bin/console
```

Usage:

```ruby
# Get a count of persisted documents.
Country.count
```
