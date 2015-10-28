# TheBigUsernameBlacklist

This library lets you validate usernames against a blacklist. The blacklist data is based on the data from The-Big-Username-Blacklist and contains privilege, programming terms, section names, financial terms and actions.

see also...
- https://github.com/marteinn/The-Big-Username-Blacklist
- https://pypi.python.org/pypi/the_big_username_blacklist
- https://www.npmjs.com/package/the-big-username-blacklist

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'the_big_username_blacklist'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install the_big_username_blacklist

## Usage

Validating a username is easy, if the word is in the blacklist, return False (validation failed), otherwise True.
Example:

```
> require 'the_big_username_blacklist'
> TheBigUsernameBlacklist.valid? 'martin'
true
>  TheBigUsernameBlacklist.valid? 'root'
false
```


If you want to use it as instance method, it's easy.

```
require 'the_big_username_blacklist'
class YourClass
  include TheBigUsernameBlacklist
end

YourClass.new.username_valid?('martin')
```





## Contributing

1. Fork it ( https://github.com/[my-github-username]/the_big_username_blacklist/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
