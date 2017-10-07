# StaticType

Add type to ruby.Only Integer is implemented.

## Install

Execute `$ gem install static_type` or add Gemfile to `gem 'static_type'` and execute `bundle`

## Usage

```ruby
require 'static_type'

int :a

a.do { 1 + 1 } # => 2
a.do { 'a' } # => RuntimeError
```
