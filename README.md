# Rails Api Template

![Take This](https://i.imgur.com/inEuTBN.jpg)

## Installation

### Ruby MacOS

```
$ brew install ruby-build rbenv rbenv-ctags

$ rbenv init
# follow instructions

# inside api template project
$ rbenv install `cat .ruby-version`
$ rbenv local `cat .ruby-version`
```

### Ruby Ubuntu

```
$ sudo apt-get update
$ sudo apt-get install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev
$ git clone https://github.com/rbenv/rbenv.git ~/.rbenv
$ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
$ echo 'eval "$(rbenv init -)"' >> ~/.bashrc
$ source ~/.bashrc

# verify
$ type rbenv

# inside api template project
$ rbenv install `cat .ruby-version`
```

### Postgres MacOS

Install [Postgres.app](https://postgresapp.com/)

### Postgres Ubuntu

```
$ sudo apt-get update
$ sudo apt-get install postgresql postgresql-contrib
```

### Setup Project

```
# inside api template project
$ bin/setup
```
this script will:

- install gem dependencies
- setup [overcommit](https://github.com/brigade/overcommit) that will execute [rubocop](https://github.com/bbatsov/rubocop) on every commit and run specs on every push.
- create [.env.local](https://github.com/bkeepers/dotenv) for you local environment specific configuration. Eg. database configuration.
- create database and load default schema

### Generate documentation

Write request specs for new endpoints and include defined dox description files. See [dox](https://github.com/infinum/dox) for usage details  and `specs/docs/v1/descriptions` for examples.
Run `$ rake api:doc:html` to generate documentation. Generated html documentation will be saved in 'public/api/docs/v1/index.html' and publicly available on api domain. Eg. https://klika-rails-api.herokuapp.com/api/docs/v1/index.html
```
$ rake api:doc:html
```

TODO:

- [] add bootstrap for admin login
- [] exclude email from jwt payload
