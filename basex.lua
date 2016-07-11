-- lua-basex
-- version 0.1.0
-- un.def, 2016

local basex_meta = {
  __index = {
    encode = function(self, source)
      if #source == 0 then return '' end

      local digits = {0}

      for i = 1, #source do
        local carry = source:byte(i, i)
        for j = 1, #digits do
          carry = carry + digits[j] * 256
          digits[j] = carry % self.base
          carry = math.floor(carry / self.base)
        end
        while carry > 0 do
           table.insert(digits, carry % self.base)
           carry = math.floor(carry / self.base)
        end
      end

      for k = 1, #source-1 do
        if source:byte(k, k) ~= 0 then break end
        table.insert(digits, 0)
      end

      local ii = 1
      local jj = #digits
      local tmp
      while true do
        tmp = self.alphabet:sub(digits[ii]+1, digits[ii]+1)
        digits[ii] = self.alphabet:sub(digits[jj]+1, digits[jj]+1)
        digits[jj] = tmp
        ii = ii + 1
        jj = jj - 1
        if ii > jj then break end
      end

      return table.concat(digits)
    end,

    decode = function(self, str)
      if #str == 0 then return '' end

      local bytes = {0}

      local value, carry
      for i = 1, #str do
        value = self.alphabet_map[str:sub(i, i)]
        if value == nil then error('Non-base' .. self.base .. ' character') end
        carry = value
        for j = 1, #bytes do
          carry = carry + bytes[j] * self.base
          bytes[j] = carry % 256
          carry = math.floor(carry / 256)
        end
        while carry > 0 do
          table.insert(bytes, carry % 256)
          carry = math.floor(carry / 256)
        end
      end

      for k = 1, #str-1 do
        if str:sub(k, k) ~= self.leader then break end
        table.insert(bytes, 0)
      end

      local decoded = ''
      for i = #bytes, 1, -1 do
        decoded = decoded .. string.char(bytes[i])
      end

      return decoded
    end
  }
}


local function basex(alphabet)
  local alphabet_map = {}
  local base = #alphabet
  local leader = alphabet:sub(1, 1)
  for i = 1, base do
    alphabet_map[alphabet:sub(i, i)] = i - 1
  end
  local instance = {
    alphabet = alphabet,
    base = base,
    leader = leader,
    alphabet_map = alphabet_map,
  }
  return setmetatable(instance, basex_meta)
end


return basex
