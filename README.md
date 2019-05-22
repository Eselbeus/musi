# Musi

Welcome to Musi 1.0.0! A very basic gem for calculating intervals in music theory. Pass a note as a string such as "C" or "Ab" to a method and receive a new note in the form of a string.

Musi 1.0.0 now allows a user to raise or lower a note by all major/minor and perfect intervals as well as tritones.

Musi 1.0.0 updates Musi 0.1.2 which only had support for basic sharping, flatting, and raising and lowering by perfect fourths and fifths.


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

.sharp and .raisem2 are methods which both raise the input of a note given as a string by a minor 2nd interval
.flat is a a method which will lower the input of a note given as a string by a minor 2nd
.raise_whole_step and .raiseM2 raise a note by a major 2nd
.lower_whole_step and .lowerM2 lower a note by a major 2nd

Other methods included:
.raisem3
.lowerm3
.raiseM3
.lowerM3
.raiseP4
.lowerP4
.raiseA4
.lowerA4
.raised5
.lowerd5
.raiseP5
.lowerP5
.raisem6
.lowerm6
.raiseM6
.lowerM6
.raisem7
.lowerm7
.raiseM7
.lowerM7

To use:

Musi::Note.sharp("D") => D#

Enharmonic spellings such as B#, E# and Gx are currently not supported as input values, although spellings such as Cb and B# are valid output values.

No support for augmented and diminished intervals yet aside from triones.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/eselbeus/musi.
Gem created by Seann Branchfield.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
