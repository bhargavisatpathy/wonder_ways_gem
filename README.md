# WonderWays

This is a gem to consume WonderWays api

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'wonder_ways'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install wonder_ways

## Usage

```ruby
ww = WonderWays.new 'http://localhost:3000'
ww.list_trails 1 # => list of Trail objects
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/wonder_ways/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
