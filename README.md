# FastWhile

### clean code
This gem extends the Array and Hash classes by adding a while method for arrays.
The method repeats the loop while most of it is used while remaining inside the given method, which allows for cleaner code using the capabilities of a regular while loop.

### perfomance
The method also uses a way to increase the performance of the while loop,
is taken from the book "Ruby Performance Optimization" and was invented by Alexander Goldstein.	is taken from the book "Ruby Performance Optimization" and was invented by Alexander Goldstein.

```ruby
times = 100_000
array = (1..1_000).to_a

Benchmark.bm(30) do |b|
  b.report "each" do
    times.times do |i|
      t = 0
      array.each do |element|
        t = element
      end
    end
  end

  b.report "Array.while" do
    a = array.dup
    times.times do |i|
      t = 0
      a.while do |el|
        t = el
      end
    end
  end

  b.report "while i < limit" do
    times.times do |i|
      limit = array.size
      t = 0
      i = 0
      while i < limit
        t = array[i]
        i += 1
      end
    end
  end

  b.report "map" do
    times.times do |i|
      t = 0
      t = array.map do |el|
        el
      end
    end
  end
end
```
results:
```
                                     user     system      total        real
each                             4.357616   0.008243   4.365859 (  4.374047)
Array.while                      0.025360   0.000006   0.025366 (  0.025366) <--
while i < limit                  2.862832   0.001995   2.864827 (  2.866551)
map                              4.856023   0.068651   4.924674 (  4.928941)
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fast_while'

or

gem 'fast_while', '0.1.1.beta', git: "https://github.com/rubywarlock/fast_while"
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install fast_while
    or
    $ gem install rubywarlock-fast_while, -s "https://github.com"

## Usage
```ruby
array = ["one", "two"]

array = array.while do |el, index|
  puts "#{el}, #{index}"
end

# method returns a array copy since the original array is destroyed due to the use of the Shift method
```

#### for a hash, it is currently required to specify two parameters, if you need not only a key but also a value
```ruby
hash = { first: "VALUE" }
hash = hash.while do |key, value|
  puts "#{key}, #{value}"
end
```
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/rubywarlock/fast_while.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
