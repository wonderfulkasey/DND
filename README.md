Welcome to the Dungeons and Dragons 'Monster Menagerie' CLI!

This gem uses the open source dnd5eapi to get information on the many monsters in the fifth edition of D&D.

To RUN the program, enter bundle install, hit enter, and then bin/DND.


To INSTALL this program:
- add this line to your application's Gemfile:
gem 'DND'

- and then execute:
$ bundle

- or, install it yourself as:
$ gem install DND

Prerequisites: This API does not require a key. This gem includes 'httparty'. So when you run bundle install this library should be installed. If not then include 'httparty' in your gem file.

Usage: Enter bin/DND in the command line and follow program prompts to get more information about monsters in Dungeons and Dragons Fifth Edition.

Development: After checking out the repo, run bin/setup to install dependencies. You can also run bin/console for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run bundle exec rake install. To release a new version, update the version number in version.rb, and then run bundle exec rake release, which will create a git tag for the version, push git commits and tags, and push the .gem file to rubygems.org.

Contributing: Bug reports and pull requests are welcome.

License: The gem is available as open source under the terms of the MIT License.

Code of Conduct: Everyone interacting in the DND project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the code of conduct.
