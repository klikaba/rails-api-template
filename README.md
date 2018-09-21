# Rails Api Template

This template provides starting point for Rails API backend with implemented authentication following OAuth2 standard.

## Included tools

### Authentication using OAuth2 standard
Authentication is implemented using [Doorkeeper]() and [JWT token standard]() implementing both password and code grant flows. More datails about [OAuth2 Standard](https://oauth.net/2/).

### Static code analyzer
This template us using [Rubocop](https://github.com/rubocop-hq/rubocop) for static code analysis. All rubocop offenses are automatically tracked and prevented on every commit. This feature is handled by [Overcommit](https://github.com/brigade/overcommit) git hook manager.

### Testing
We are using [RSpec](https://github.com/rspec/rspec-rails) testing framework.

### Automatic API Documentation
We are generating API documentation from request specs with [Dox](https://github.com/infinum/dox)

### Continuous Integration
Setup for [Circle CI](https://circleci.com/)

## Dependencies

- Ruby version defined in `.ruby-version`
- Postgres database

## Setup Project

```
$ bin/setup
```
this script will:

- install gem dependencies
- setup overcommit
- create .env.local
- create database and load default schema

## Configuration
To get basic idea about configuration approach read [12factor](https://12factor.net/).

`.env` configuration file has to include all basic configuration required for this project to work. For any environment specific configuration use `.env.#{Rails.env}` specific configuration file. For local specific configuration use .env.local

## Generate documentation

Write request specs for new endpoints and include defined dox description files. See [dox](https://github.com/infinum/dox) for usage details  and `specs/docs/v1/descriptions` for examples.
Run `$ rake api:doc:html` to generate documentation. Generated html documentation will be saved in 'public/api/docs/v1/index.html' and publicly available on api domain. Eg. https://klika-rails-api.herokuapp.com/api/docs/v1/index.html
```
$ rake api:doc:html
```

## Maintainers

- [Muamer Ribica](https://github.com/mribica)
