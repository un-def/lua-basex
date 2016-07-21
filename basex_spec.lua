local basex = require('basex')
local fixtures = require('basex_spec_fixtures')


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


describe("test valid", function()
  for _, v in pairs(fixtures.valid) do
    local base

    before_each(function()
      base = basex[v.alphabet] or basex(fixtures.alphabets[v.alphabet])
    end)

    it(("encode '%s' using '%s'"):format(v.hex, v.alphabet), function()
      local bytes = tobytes(v.hex)
      local encoded = base:encode(bytes)
      assert.equal(v.string, encoded)
    end)

    it(("decode '%s' using '%s'"):format(v.string, v.alphabet), function()
      local decoded = base:decode(v.string)
      assert.equal(v.hex, tohexstring(decoded))
    end)

  end
end)


describe("test invalid", function()
  for _, v in pairs(fixtures.invalid) do

    it(("decode '%s' (%s) using '%s'"):format(v.string,
                                              v.description,
                                              v.alphabet), function()
      local base = basex[v.alphabet] or basex(fixtures.alphabets[v.alphabet])
      assert.has_error(function() base:decode(v.string) end,
                       'Non-' .. v.alphabet .. ' character')
    end)

  end
end)
