# Rails Api Template

This template provides starting point for Rails API backend, following Klika quality guidelines,  with implemented authentication following OAuth2 standard.

## Setup

### Dependencies

- Ruby version defined in `.ruby-version`
- Postgres database


```
$ bin/setup
```
this script will:

- install gem dependencies
- setup overcommit
- create .env.local
- create database and load default schema

### Configuration
To get basic idea about configuration approach read [12factor](https://12factor.net/).

`.env` configuration file has to include all basic configuration required for this project to work. For any environment specific configuration use `.env.#{Rails.env}` specific configuration file. For local specific configuration use .env.local


## Getting started

Use Klika quality guidelines for general development references.

### Ruby styleguides

This project is following ruby [style guide](https://github.com/rubocop-hq/ruby-style-guide)

### New feature

Use [GitFlow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow) development workflow with controller tests and documentation included.

### Pull request quality gates

- no conflicts with target branch
- pass CircleCI tests
- code review approval
- feature followed by integration tests with dox annotations
- documentation generated from test before

#### Generate documentation

Write request specs for new endpoints and include defined dox description files. See [dox](https://github.com/infinum/dox) for usage details  and `specs/docs/v1/descriptions` for examples.
Run `$ rake api:doc:html` to generate documentation. Generated html documentation will be saved in 'public/api/docs/v1/index.html' and publicly available on api domain. Eg. https://klika-rails-api.herokuapp.com/api/docs/v1/index.html
```
$ rake api:doc:html
```

## Tools

### Authentication using OAuth2 standard
Authentication is implemented using [Doorkeeper]() and [JWT token standard]() implementing both password and code grant flows. More datails about [OAuth2 Standard](https://oauth.net/2/).

### Quality gates

This project will run static code analyser on every commit and full test suite on git push.

### Static code analyzer
This template us using [Rubocop](https://github.com/rubocop-hq/rubocop) for static code analysis. All rubocop offenses are automatically tracked and prevented on every commit. This feature is handled by [Overcommit](https://github.com/brigade/overcommit) git hook manager.

### Testing
We are using [RSpec](https://github.com/rspec/rspec-rails) testing framework.

### Automatic API Documentation
We are generating API documentation from request specs with [Dox](https://github.com/infinum/dox)

### Continuous Integration
Setup for [Circle CI](https://circleci.com/)

## Maintainers

- [Muamer Ribica](https://github.com/mribica)
