# middleman-ngannotate

`middleman-ngannotate` is an extension for the [Middleman] static site generator that adds [ngannotate](https://github.com/olov/ngannotate) processing for your JavaScript files to the asset pipeline. This will automatically insert the [AngularJS](http://angularjs.org) injector annotations to your declarations so that your code can minify correctly.

The code for the Sprockets processor and for bundling ngannotate was taken (copied) rather shamelessly from the [middleman-ngmin](https://github.com/bhollis/middleman-ngmin) and [ngannotate-rails](https://github.com/kikonen/ngannotate-rails) projects.

## Installation

If you're just getting started, install the `middleman` gem and generate a new project:

```bash
gem install middleman
middleman init MY_PROJECT
```

If you already have a Middleman project: Add `gem 'middleman-ngannotate'` to your `Gemfile` and run `bundle install`.

## Configuration

```ruby
activate :ngannotate
```

That's it! Your assets will now be processed.

## Versioning

Like ngannotate-rails, middleman-ngannotate's version number mirrors the version number for the version of ngannotate that is bundled with it.

## Bug Reports

This project simply plugs [ngannotate](https://github.com/olov/ngannotate-rails) into Middleman! For bugs in ngannotate itself, please file issues in [ngannotate's issue tracker](https://github.com/olov/ngannotate/issues).

Github Issues are used for managing bug reports and feature requests. If you run into issues, please search the issues and submit new problems: https://github.com/siebertm/middleman-ngannotate/issues

The best way to get quick responses to your issues and swift fixes to your bugs is to submit detailed bug reports, include test cases and respond to developer questions in a timely manner. Even better, if you know Ruby, you can submit [Pull Requests](https://help.github.com/articles/using-pull-requests) containing Cucumber Features which describe how your feature should work or exploit the bug you are submitting.

## Upgrading ngannotate

The actual ngannotate project is bundled into this gem via [Browserify](https://github.com/substack/node-browserify). You can update to the latest version of ngannotate via Rake:

    rake ngannotate:build

## License

Copyright (c) 2014 Michael Siebert, based on works by Benjamin Hollis and Jason Morrison. MIT Licensed, see [LICENSE] for details.

[middleman]: http://middlemanapp.com
[gem]: https://rubygems.org/gems/middleman-ngannotate
[gemnasium]: https://gemnasium.com/siebertm/middleman-ngannotate
[LICENSE]: https://github.com/siebertm/middleman-ngannotate/blob/master/LICENSE.md
