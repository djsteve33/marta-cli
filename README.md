# MARTA Train Info

Welcome to MARTA Train Info! MARTA is an acronym for Metropolitan Atlanta Rapid Transit Authority. MARTA provides both bus and rail transportation services for residents of Metro Atlanta. This application focuses on the train stations in the MARTA system.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'marta-cli'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install marta-cli

## Usage

To run the program, you will first need to obtain an API Key from MARTA. You can do that here: https://www.itsmarta.com/developer-reg-rtt.aspx. 

first run 'bin/setup'. Then, run 'bin/run'. When the program begins, you will see a Welcome message then a list of MARTA train stations will display. You will then be prompted to select a train station by its corresponding number, type list to see the list of train stations again, or type exit to exit the program.

If you type something other than a valid number, the word "list", or the word "exit" at the prompt, you will get an error prompting you to enter list or exit.

If you enter a valid number, you will next see some train details displayed. The details include the station name that you selected, the destination station that the train is heading to, the direction the train is heading (N, S, E, or W), which line the train is on (Red, Gold, Green, or Blue), and the waiting time for the train to arrive at your selected train station for boarding. You will then see the action prompt again.


If you type list at the prompt, the list of train stations will be displayed again. You will then be prompted for an action again.


If you type exit at the prompt, you will see a Goodbye message and you will exit the program.


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'droll-agent-4580'/marta-cli. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Marta::Cli project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/'droll-agent-4580'/marta-cli/blob/master/CODE_OF_CONDUCT.md).
