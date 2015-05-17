Focuzo
--------------

Rspec formatter to set light lamp through arduino, based on status of tests.

Download [here the arduino source code](http://github.com/vsgantoniazzi/focuzo-arduino) and setup your arduino.

Configuring
--------------

Set the environment variable ARDUINO_IP. (by default arduino configured in "http://192.168.0.10:80")

Using the formatter
--------------

Add gem to your Gemfile:

```
gem 'focuzo'
```
or simple install with: `gem install focuzo`.

When you call RSpec, set the format option with: Focuzo. `rspec spec/ --format Focuzo`

Or [add in your .rspec](http://github.com/vgsantoniazzi/focuzo/.rspec)


Contributing to focuzo
--------------

- Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
- Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
- Fork the project.
- Start a feature/bugfix branch.
- Commit and push until you are happy with your contribution.
- Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
- Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

Copyright

Copyright (c) 2015 Victor Antoniazzi. See LICENSE.txt for
further details.

