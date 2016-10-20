# Mina::Systemd
This is wrapper for `systemd` service manager for [mina](https://github.com/mina-deploy/mina)


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mina-systemd', require: false
```

And then execute:

    $ bundle

## Usage

in `deploy.rb`

```ruby
require 'mina/systemd'

task deploy: :environment do
  deploy do
    ...
    on :launch do
      invoke :'systemctl:restart', 'puma'
    end
  end
end
```

Call it as mina task:

`mina systemctl:stop['puma']`

if you use zsh add noglob

`noglob mina systemctl:status['puma']`

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/alexkojin/mina-systemd. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

