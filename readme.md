# This With That

An API set for storing information that contains relationships between items.

[![RSpec](https://github.com/bobthearsonist/this-with-that/actions/workflows/test.yml/badge.svg)](https://github.com/bobthearsonist/this-with-that/actions/workflows/test.yml)

## MSDS information

For use as a material reference chart for what not to combine in the shop.

## Architecture

Item

- metadata
- relationships

## Implementation

Material

- MSDS info (metadata)
  - handling
  - storage
  - chemical composition
  - uses
- Exclusions (relationships)
  - Do not store in
  - Do not mix with
  - Do not use on

## Development

The application is written in ruby using rails, the rswag gem is used to auto generate swagger pages.

to run the server:

```bash
rails server
```

the swagger page can be found at <http://localhost:3000/api-docs/index.html>

to generate the swagger files:

```bash
rake rswag
```

### Docker

The hosted image is built form a docker container. to build and run with docker use

```bash
➜ docker build .
```

### Hosting

The app is hosted with AWS App Runner. the [apprunner.yml](apprunner.yml) file came straight [from the AWS docs](https://docs.aws.amazon.com/apprunner/latest/dg/service-source-code-ruby.html)

## Toolchain

- Ruby 3.1.0
- Rails 7.0.4
- sqltools - VSCode Extension for sqlite databases
