local _M = { _VERSION = 0.15 }

local match = string.match
local gsub = string.gsub
local open = io.open

local unescape = function(s)
	return gsub(s, '\\"', '"')
end

_M.new = function(directory, language, return_true)
	local i18n = {}

	local _i18n = function(s, msgctx)
		local ctx = i18n[msgctx or '']

		return (ctx and ctx[s] and ctx[s] ~= '') and ctx[s] or s
	end

	if not directory then
		return nil, "directory missing"
	end

	if not language then
		return nil, "language missing"
	end

	local filename = directory .. '/' .. language .. ".po"

	local f, err = open(filename, "r")
	if not f then
		return return_true and _i18n, err
	end

	local id, ctx, c, m, k, v
	for l in f:lines() do
		m, v = match(l, '^msg(%S+) "(.*)"')
		v = v or (k and match(l, '^"(.*)"'))

		if v and (m == "id" or (not m and k == "id")) then
			k, id = "id", m and unescape(v) or (id .. unescape(v))
		elseif v and (m == "str" or (not m and k == "str")) then
			if m then
				i18n[c or ''] = i18n[c or ''] or {}
				ctx, k, c = i18n[c or ''], "str"
			end

			ctx[id] = (id ~= "") and (m and v or (ctx[id] .. unescape(v)))
		elseif v and (m == "ctxt") then
			c = v
		else
			k, c = nil
		end
	end

	return _i18n, nil, f:close()
end

return _M
