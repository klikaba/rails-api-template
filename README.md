# Rails Api Template

![Take This](https://i.imgur.com/inEuTBN.jpg)

## Installation

### Ruby MacOS

```
$ brew install ruby-build rbenv rbenv-readline rbenv-ctags

# inside api template project
$ rbenv install `cat .ruby-version`
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

TODO:

- [] write details about cloning, renaming project and changing git remotes
- [] running specs
- [] generating documentation from specs
- [] add bootstrap for admin login
- [] exclude email from jwt payload