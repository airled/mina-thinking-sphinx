# Mina for Thinking Sphinx

## To use this gem:

Add the gem to application's Gemfile:
```ruby
gem 'mina-thinking-sphinx'
```

Install it:

    $ bundle install

Add line to `deploy.rb`
```ruby
require 'mina/ts'
```

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
