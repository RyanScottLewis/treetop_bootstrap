# Treetop Bootstrap

A scaffold for [Treetop][treetop] projects.

## Install

### HTTP

```sh
somebody@somewhere ~/Code $ wget "https://github.com/RyanScottLewis/treetop_bootstrap/archive/master.zip"
somebody@somewhere ~/Code $ unzip master.zip && rm master.zip
somebody@somewhere ~/Code $ mv treetop_bootstrap-master my_cool_parser
```

### Git

```sh
somebody@somewhere ~/Code $ git clone git@github.com:RyanScottLewis/treetop_bootstrap.git
somebody@somewhere ~/Code $ mv treetop_bootstrap my_cool_parser
somebody@somewhere ~/Code $ rm -rf my_cool_parser/.git
```

#### Now refactor!

> Remember to replace all occurrences of `TreetopBootstrap` with `MyCoolParser` and all occurrences of `treetop_bootstrap` with `my_cool_parser`!

## Usage

This comes with an example `SyntaxNode` named `HelloKeyword`.

`lib/treetop_bootstrap/language_parser.treetop`

```treetop
rule hello_keyword
  'hello' space ( string / integer / float ) <HelloKeyword>
end
```

`lib/treetop_bootstrap/language/hello_keyword.rb`

```ruby
class HelloKeyword < Node
  def run
    node      = elements[0]
    value     = node.value
    value_cls = value.class
    node_cls  = node.class.to_s.split('::').last
        
    puts "Hello #{value}! <#{value_cls} - #{node_cls}>"
  end
end
```

#### Using the example `HelloKeyword`

```ruby
require 'my_cool_parser'

TreetopBootstrap.parse('hello "world"').run # => Hello world! <String - StringLiteral>
TreetopBootstrap.parse('hello 12').run # => Hello 12! <Fixnum - IntegerLiteral>
```

See `examples/simple.rb` for more.

## Copyright

Copyright © 2012 Ryan Scott Lewis <ryan@rynet.us>.

The MIT License (MIT) - See LICENSE for further details.


[treetop]: http://treetop.rubyforge.org