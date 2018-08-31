# Mina for Thinking Sphinx

## Install

```sh
bundle install
```

Add the gem to application's Gemfile:
```ruby
gem 'mina-thinking-sphinx'
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
ts:rt:rebuild
```
