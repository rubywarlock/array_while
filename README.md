# ArrayWhile

### clean code
This gem extends the Array class by adding a while method for arrays.
The method repeats the loop while most of it is used while remaining inside the given method, which allows for cleaner code using the capabilities of a regular while loop.

### perfomance
The method also uses a way to increase the performance of the while loop,
is taken from the book "Ruby Performance Optimization" and was invented by Alexander Goldstein.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'array_while'

or

gem 'array_while', '0.1.1.beta', git: "https://github.com/rubywarlock/array_while"
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install array_while
    or
    $ gem install rubywarlock-array_while, -s "https://github.com"

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/rubywarlock/array_while.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
