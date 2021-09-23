# ErbEscape

A simple and fast tool to escape erb template to standard html.
ErbEscape uses the same regexp for parsing erb files as erubi, the standard erb parser in Rails and Tilt.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'erb_escape'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install erb_escape

## Usage

```
input = "<a><%= @test %></a>"
encoded = ErbEscape.escape(input)
# ... Format html
decoded = ErbEscape.unescape(encoded)
raise StandardError unless decoded == input
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mollerhoj/erb_escape. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/mollerhoj/erb_escape/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ErbEscape project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/mollerhoj/erb_escape/blob/master/CODE_OF_CONDUCT.md).
