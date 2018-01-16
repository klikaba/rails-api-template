# Rails Api Template

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
```
