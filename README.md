# Github Jobs

[![Gem Version](https://badge.fury.io/rb/github-jobs.png)](http://badge.fury.io/rb/github-jobs) [![Build Status](https://travis-ci.org/georgedrummond/github-jobs.png)](https://travis-ci.org/georgedrummond/github-jobs) [![Dependency Status](https://gemnasium.com/georgedrummond/github-jobs.png)](https://gemnasium.com/georgedrummond/github-jobs)


For your ruby apps that need to consume the Github jobs api...

## Installation

Add this line to your application's Gemfile:

    gem 'github-jobs'

## Usage

List the 50 most recent jobs published

```ruby
Github::Jobs.positions
```

Perform a specialised search

```ruby
# description — A search term, such as "ruby" or "java". This parameter is aliased to search.
# location — A city name, zip code, or other location search term.
# lat — A specific latitude. If used, you must also send long and must not send location.
# long — A specific longitude. If used, you must also send lat and must not send location.
# full_time — If you want to limit results to full time positions set this parameter to 'true'.
# search - A query string

Github::Jobs.positions(search: 'ruby')
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Copyright

Copyright George Drummond 2014.
