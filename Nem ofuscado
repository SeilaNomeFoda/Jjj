-- hdshn.lua
-- Retorna a key do dia sem nada a mais

local KEYS_AMOUNT = 100
local RANDOM_LENGTH = 8
local TIMEZONE_OFFSET = -3

-- Gerador de números aleatórios
local function randomDigits(len)
    local chars = "0123456789"
    local res = ""

    for i = 1, len do
        local r = math.random(1, #chars)
        res = res .. chars:sub(r, r)
    end

    return res
end

-- Cria as 100 keys padronizadas
local keys = {}
for i = 1, KEYS_AMOUNT do
    keys[i] = "FREEICEHUB_" .. randomDigits(RANDOM_LENGTH)
end

-- Pega data de Brasília
local function getBrasiliaDate()
    local unix = os.time()
    local br = unix + (TIMEZONE_OFFSET * 3600)
    local d = os.date("!*t", br)

    return d.year, d.month, d.day
end

-- Key fixa por dia (determinística)
local function getKeyOfToday()
    local y, m, d = getBrasiliaDate()
    local seed = y * 10000 + m * 100 + d
    math.randomseed(seed)

    return keys[math.random(1, #keys)]
end

return getKeyOfToday()
