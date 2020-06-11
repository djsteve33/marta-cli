# MARTA Train Info

Welcome to MARTA Train Info! MARTA is an acronym for Metropolitan Atlanta Rapid Transit Authority. MARTA provides both bus and rail transportation services for residents of Metro Atlanta. This application provides information on the train stations in the MARTA system.

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

To start running the program, first run 'bin/setup'. Then, run 'bin/run'. When the program begins, you will see a Welcome message then a list of MARTA train stations will display. You will then be prompted to select a train station by its corresponding number, type list to see the list of train stations again, or type exit to exit the program.

If you type something other than a valid number, the word "list", or the word "exit" at the prompt, you will get an error prompting you to type list or exit.

If you enter a valid number, you will next see some train details displayed. The details include the station name that you selected, the destination station that the train is heading to, the direction the train is heading (N, S, E, or W), which line the train is on (Red, Gold, Green, or Blue), and the waiting time for the train to arrive at your selected train station for boarding. You will then see the action prompt again.


If you type list at the prompt, the list of train stations will be displayed again. You will then be prompted for an action again.


If you type exit at the prompt, you will see a Goodbye message and you will exit the program.


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'droll-agent-4580'/marta-cli. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

I am licensed under the MIT License, which can be found here: https://github.com/djsteve33/marta-cli/blob/master/LICENSE.txt

## Code of Conduct

Everyone interacting in the Marta::Cli project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/'droll-agent-4580'/marta-cli/blob/master/CODE_OF_CONDUCT.md).
