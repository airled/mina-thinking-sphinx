# Mina for Thinking Sphinx

## Install

Add the gem to application's Gemfile:
```ruby
gem 'mina-thinking-sphinx', require: false
```

Run
```sh
bundle install
```

Add line to `deploy.rb`
```ruby
require 'mina/ts'
```

## Usage

Use commands in `deploy.rb`:
```ruby
task :deploy do
  deploy do
    ...
    on :launch do
      invoke :'ts:rebuild'
    end
  end
end
```

## List of available commands
```
ts:start
ts:stop
ts:restart
ts:rebuild
ts:index
ts:configure
ts:rt:rebuild
ts:rt:index
```
See [Thinking Sphinx Tasks documentation](https://freelancing-gods.com/thinking-sphinx/v4/rake_tasks.html) for details.
