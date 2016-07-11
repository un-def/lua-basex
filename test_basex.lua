local basex = require('basex')
local fixtures = require('test_fixtures')


local function tobytes(hexstring)
  local bytes = ''
  for i = 1, #hexstring, 2 do
    bytes = bytes .. string.char(tonumber(hexstring:sub(i, i+1), 16))
  end
  return bytes
end

local function tohexstring(bytes)
  local hexstring = ''
  for i = 1, #bytes do
    hexstring = hexstring .. string.format('%02x', bytes:byte(i, i))
  end
  return hexstring
end

local base

print('\ntest valid values\n-----------------\n')
local bytes, encoded, decoded
for i, v in pairs(fixtures.valid) do
  base = basex(fixtures.alphabets[v.alphabet])
  bytes = tobytes(v.hex)
  print(i, v.alphabet, v.hex)
  encoded = base:encode(bytes)
  assert(encoded == v.string, encoded .. ' != ' .. v.string)
  print('encode OK')
  decoded = base:decode(v.string)
  assert(decoded == bytes, tohexstring(decoded) .. ' != ' .. v.hex)
  print('decode OK')
  print()
end

print('\ntest invalid values\n-------------------\n')
local ok, err
for i, v in pairs(fixtures.invalid) do
  print(i, v.description)
  base = basex(fixtures.alphabets[v.alphabet])
  ok, err = pcall(base.decode, base, v.string)
  assert(ok == false, 'Error has not been raised')
  print('OK error has been raised: ' .. err)
  print()
end

print('\n================\nAll tests passed\n================')
