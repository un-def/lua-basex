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
      base = basex(fixtures.alphabets[v.alphabet])
    end)

    it(("encoding '%s' using '%s'"):format(v.hex, v.alphabet), function()
      local encoded = base:encode(tobytes(v.hex))
      assert.equal(v.string, encoded)
    end)

    it(("decoding '%s' using '%s'"):format(v.string, v.alphabet), function()
      local decoded = base:decode(v.string)
      assert.equal(v.hex, tohexstring(decoded))
    end)

  end
end)


describe("test invalid", function()
  for _, v in pairs(fixtures.invalid) do

    it(("decoding '%s' (%s) using '%s'"):format(v.string,
                                              v.description,
                                              v.alphabet), function()
      local base = basex(fixtures.alphabets[v.alphabet])
      local decoded, err = base:decode(v.string)
      assert.is_nil(decoded)
      assert.equal(err, 'Non-base' .. v.alphabet:match('%d+') .. ' character')
    end)

  end
end)


describe("test predefined codec", function()
  for _, c in ipairs(fixtures.predefined) do

    before_each(function()
      package.loaded.basex = nil
      basex = require('basex')
    end)

    it(("'%s' is instantiated lazily"):format(c), function()
      assert.is_nil(rawget(basex, c))
      local _ = basex[c]
      assert.is_table(rawget(basex, c))
    end)

    it("'%s' is created only once", function()
      local basex_instance = basex[c]
      assert.is_table(basex_instance)
      assert.equal(basex_instance, basex[c])
      assert.equal(basex_instance, basex[c])
    end)

    for _, v in pairs(fixtures.valid) do
      if v.alphabet == c then
        it(("'%s' encodes '%s'"):format(c, v.hex), function()
          local base = basex[v.alphabet]
          local encoded = base:encode(tobytes(v.hex))
          assert.equal(v.string, encoded)
        end)
      end
    end

  end
end)
