# Musi

Welcome to Musi! A very basic gem for calculating intervals in music theory. Pass a note as a string such as "C" or "Ab" to a method and receive a new note in the form of a string.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'musi'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install musi

## Usage

.sharp is a method which will raise the input of a note given as a string by one half step
.flat is a a method which will lower the input of a note given as a string by one half step
.raiseP5 raises a note by a perfect fifth
.lowerP5 lowers a note by a perfect fifth

Enharmonic spellings such as B# and Gx are currently not supported.

Currently only these 4 actions available.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/eselbeus/musi.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
