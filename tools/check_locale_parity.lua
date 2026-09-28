-- Scratch key-parity checker for MW2LU locales.lua (not shipped).
-- Stubs GetLocale, loads data/locales.lua for each client locale, and diffs
-- each block's key set against the enUS base.
-- Usage: lua check_locale_parity.lua <repo_root>

local repo = arg and arg[1] or "."
local locales = {
    "enUS", "deDE", "esES", "esMX", "frFR",
    "itIT", "koKR", "ptBR", "ptPT", "ruRU", "zhCN", "zhTW",
}

local function load_for(locale)
    MW2LU = nil
    GetLocale = function() return locale end
    local f = loadfile(repo .. "/data/locales.lua")
    if not f then error("cannot open " .. repo .. "/data/locales.lua") end
    f()
    local L = MW2LU and MW2LU.L
    MW2LU = nil
    return L
end

local base = load_for("enUS")
if not base then error("enUS base table missing") end
local base_keys = {}
local base_count = 0
for k in pairs(base) do base_keys[#base_keys + 1] = k; base_count = base_count + 1 end
table.sort(base_keys)

local fail = false
print(string.format("enUS  : total=%d (base key set)", base_count))
for _, loc in ipairs(locales) do
    local L = load_for(loc)
    if not L then
        print(string.format("%-6s: ERROR - no table produced", loc))
        fail = true
    else
        local total, missing, extra = 0, {}, {}
        local identical = {}
        for k in pairs(L) do
            total = total + 1
            if not base[k] then extra[#extra + 1] = k end
            if base[k] == L[k] and loc ~= "enUS" then identical[#identical + 1] = k end
        end
        for _, k in ipairs(base_keys) do
            if L[k] == nil then missing[#missing + 1] = k end
        end
        table.sort(missing); table.sort(extra); table.sort(identical)
        local ok = #missing == 0 and #extra == 0 and total == base_count
        if not ok then fail = true end
        local line = string.format("%-6s: total=%d missing=%d extra=%d identical_to_enUS=%d %s",
            loc, total, #missing, #extra, #identical, ok and "OK" or "FAIL")
        if #identical > 0 then line = line .. "  identical={" .. table.concat(identical, ",") .. "}" end
        if #missing > 0 then line = line .. "  missing={" .. table.concat(missing, ",") .. "}" end
        if #extra > 0 then line = line .. "  extra={" .. table.concat(extra, ",") .. "}" end
        print(line)
    end
end

-- Fallback: unexpected GetLocale result must render the full enUS set
local L = load_for("xxXX")
local fallback_ok = true
for _, k in ipairs(base_keys) do
    if L[k] ~= base[k] then fallback_ok = false end
end
print("FALLBACK-" .. (fallback_ok and "OK" or "FAIL") .. ": unmatched locale xxXX renders enUS for all " .. base_count .. " keys")
if not fallback_ok then fail = true end

if fail then
    print("RESULT: FAIL")
    os.exit(1)
else
    print(string.format("RESULT: PASS - all 12 locales, %d/%d key parity, 0 missing, 0 extra", base_count, base_count))
end
