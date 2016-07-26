lua-basex
=========

Base encoding/decoding of any given alphabet using bitcoin style leading zero compression. This is a Lua implementation of [base-x](https://github.com/cryptocoinjs/base-x).



### Installation

```
$ luarocks install lua-basex
```



### Dependencies

lua-basex has no dependencies (except, of course, Lua).



### Compatibility

Tested with Lua 5.1, 5.2, and 5.3.



### Examples

```lua
local basex = require('basex')

local encoded, decoded
local base58alphabet = '123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz'

local base58 = basex(base58alphabet)
decoded = base58:decode('5Kd3NBUAdUnhyzenEwVLy9pBKxSwXvE9FMPyR4UKZvpe6E3AgLr')
print(decoded)
--> [string of bytes]
encoded = base58:encode(decoded)
print(encoded)
--> 5Kd3NBUAdUnhyzenEwVLy9pBKxSwXvE9FMPyR4UKZvpe6E3AgLr

local base2 = basex('01')
encoded = base2:encode('\0\255')
print(encoded)
--> 011111111
decoded = base2:decode(encoded)
print(decoded:byte(1, 2))
--> 0      255
```

There are a bunch of predefined encoders/decoders:

* base16lower
* base16upper
* base58bitcoin
* base58flickr
* base58ripple

So, the first example can be rewritten as follows:

```lua
local basex = require('basex')

local decoded = basex.base58bitcoin:decode('5Kd3NBUAdUnhyzenEwVLy9pBKxSwXvE9FMPyR4UKZvpe6E3AgLr')
local encoded = basex.base58bitcoin:encode(decoded)
```

An alphabet for any `basex.baseXvariant` predefined encoder/decoder is available as `basex.alphabets.BASEXVARIANT` (e.g., `basex.alphabets.BASE58BITCOIN`).
