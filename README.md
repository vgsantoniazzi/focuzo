## Welcome to Focuzo

Rspec formatter to call anyting you want by HTTP requests

## Getting Started

From rubygems:

```
gem install focuzo
```

From source code:

```
git clone git@github.com:vgsantoniazzi/focuzo.git
cd focuzo
gem build --verbose focuzo.gemspec
gem install focuzo-version.gem
```

## Usage

setup `NOTIFIER_IP` environment variable, similar like: `NOTIFIER_IP=192.168.0.10`

```
rspec --format Focuzo
```

When test suit starts, it makes a call for notifier ip with color yellow: `http://192.168.0.10/yellow` representing that started.

When single test fail, it makes a call for notifier ip with color red: `http://192.168.0.10/red` representing that failed.

When test finish without fail, it makes a call for notifier ip with color green: `http://192.168.0.10/green` representing that everything is OK.

## Contributing

I :heart: Open source!

[Follow github guides for forking a project](https://guides.github.com/activities/forking/)

[Follow github guides for contributing open source](https://guides.github.com/activities/contributing-to-open-source/#contributing)

## License

Gem is released under the [MIT license](http://opensource.org/licenses/MIT).
