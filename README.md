# PHONEM Encoder

Encode a string with the PHONEM algorithm. This gem can be used for finding strings by their phonetic sound - optimized for the german language.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'phonem_encoder'
```
And then execute:

    $ bundle

Or install it yourself as:

    $ gem install phonem_encoder


## Usage

Call `phonetic_encode` on any string to get the phonetic code of the string.

```ruby
"Müller".phonetic_code
```

This will output "mylr"


## Documentation

[http://rubydoc.info/gems/phonem_encoder/frames](http://rubydoc.info/gems/phonem_encoder/frames)


## Development

Questions or problems? Please post them on the [issue tracker](https://github.com/arndttouby/phonem_encoder/issues).


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


This gem is created by Arndt Touby and is under the MIT License.