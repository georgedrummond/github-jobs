# Github::Jobs - Ruby 

[![Gem Version](https://badge.fury.io/rb/github-jobs.png)](http://badge.fury.io/rb/github-jobs) [![Build Status](https://travis-ci.org/georgedrummond/github-jobs.png)](https://travis-ci.org/georgedrummond/github-jobs) [![Dependency Status](https://gemnasium.com/georgedrummond/github-jobs.png)](https://gemnasium.com/georgedrummond/github-jobs)

For your ruby apps that need to consume the Github jobs api...

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'github-jobs'
```

## Usage

Search for jobs by term, location, full time vs part time, or any combination of the three. All parameters are optional.

| Parameter     | Description                                                                      |
|---------------|:---------------------------------------------------------------------------------|
| *description* | A search term, such as "ruby" or "java". This parameter is aliased to search     |
| *location*    | A city name, zip code, or other location search term                             |
| *lat*         | A specific latitude. If used, you must also send long and must not send location |
| *long*        | A specific longitude. If used, you must also send lat and must not send location |
| *full_time*   | If you want to limit results to full time positions set this parameter to 'true' |
| *search*      | A query string                                                                   |
| *markdown*    | Set to 'true' to get the description and how_to_apply fields as Markdown         |

Below are some code examples

```ruby
Github::Jobs.positions

Github::Jobs.positions(search: 'ruby', location: 'london', markdown: true)

Github::Jobs.positions.first.title
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Copyright

© Copyright George Drummond 2014 - MIT License
