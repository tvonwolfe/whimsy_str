# whimsy_str
A simple rubygem to inject some whimsicality into your strings.

## Motivations
I've had a couple of command-line utilities for these floating around on my
personal machines for a while, and figured it would be great to put them out
there in an easily-consumable format.

## Installation

```sh
gem install whimsy_str
```

## Usage
`whimsy_str` provides some extensions to the built-in `String` class, allowing
easy transformations into popular meme formats.

#### Code Sample

```ruby
require 'whimsy_str'
puts "Sounds like a lot of \n#{'hooplah'.wavify}\nover one small krabby patty"
puts "Nobody wants to work anymore".spongify
```

Console output:
```
Sounds like a lot of
h o o p l a h
over one small krabby patty
NOBOdY WAnTS To wORK AnYmOrE
```

#### Executables
`whimsy_str` provides command-line executables for these functionalities, as
well. For example:

```sh
$ wavy incredible
i n c r e d i b l e
$ sponge 'wow this is so cool'
wow thiS is sO coOl
$
```

## Development
### Requirements
- Ruby >= 2.7
