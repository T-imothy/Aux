module 'aux'

local T = require 'T'

function C(r, g, b, a)
	local mt = T.map('__metatable', false, '__newindex', pass, 'color', T.list(r, g, b, a))
	function mt:__call(text)
		local r, g, b, a = unpack(mt.color)
		if text then
			local alpha = a <= 1 and floor(a * 255 + .5) or a
			return format('|c%02X%02X%02X%02X', alpha, r, g, b) .. text .. FONT_COLOR_CODE_CLOSE
		else
			return r/255, g/255, b/255, a
		end
	end
	function mt:__concat(text)
		local r, g, b, a = unpack(mt.color)
		local alpha = a <= 1 and floor(a * 255 + .5) or a
		return format('|c%02X%02X%02X%02X', alpha, r, g, b) .. text
	end
	return setmetatable(T.acquire(), mt)
end

M.color = immutable-{
	none = setmetatable({}, {__metatable=false, __newindex=pass, __call=function(_, v) return v end, __concat=function(_, v) return v end}),
	text = immutable-{enabled = C(255, 254, 250, 1), disabled = C(147, 151, 139, 1)},
	label = immutable-{enabled = C(216, 225, 211, 1), disabled = C(150, 148, 140, 1)},
	link = C(153, 255, 255, 1),
	window = immutable-{background = C(8, 10, 14, .95), border = C(150, 42, 42, 1)},
	panel = immutable-{background = C(18, 13, 16, .98), border = C(112, 34, 34, 1)},
	content = immutable-{background = C(38, 18, 20, 1), border = C(105, 31, 31, 1)},
	button = immutable-{background = C(72, 20, 23, 1), border = C(166, 48, 48, 1), hover = C(205, 66, 66, .32)},
	accent = C(210, 54, 54, 1),
	state = immutable-{enabled = C(70, 140, 70, 1), disabled = C(140, 70, 70, 1)},

	tooltip = immutable-{
		value = C(255, 255, 154, 1),
		merchant = C(204, 127, 25, 1),
		disenchant = immutable-{
			value = C(25, 153, 153, 1),
			distribution = C(204, 204, 51, 1),
			source = C(178, 178, 178, 1),
		}
	},

	blue = C(41, 146, 255, 1),
	green = C(22, 255, 22, 1),
	yellow = C(255, 255, 0, 1),
	orange = C(255, 146, 24, 1),
	red = C(255, 0, 0, 1),
	gray = C(187, 187, 187, 1),
	gold = C(255, 255, 154, 1),

	blizzard = C(0, 180, 255, 1),
}
