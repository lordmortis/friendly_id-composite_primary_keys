# FriendlyIdWithCompositePrimaryKeys

This plugin makes [friendly_id](https://github.com/norman/friendly_id) and [composite_primary_keys](https://github.com/composite-primary-keys/composite_primary_keys) work together. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'friendly_id_with_composite_primary_keys'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install friendly_id_with_composite_primary_keys

## Usage

1. Setup your model's keys via ```primary_keys = :key1, :key2```.
2. Extend your model to include FriendlyId via ```extend FriendlyId``
3. `use: composite_<slugged/scoped>` to 

## Supported friendly ID types

1. Slugged ```:composite_slugged```
2. Scoped ```:composite_scoped```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/friendly_id_with_composite_primary_keys/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
