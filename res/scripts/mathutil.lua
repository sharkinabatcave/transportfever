function math.round(x)
	return math.floor(x + .5)
end

function math.clamp(f, a, b)
	if (f < a) then return a end
	if (f > b) then return b end
	return f
end

function math.lerp(a, b, s)
	return a + (b - a) * s
end

function math.invLerp(x, a, b)
	return (x - a) / (b - a)
end

function math.map(x, a, b, c, d)
	return math.lerp(c, d, math.invLerp(x, a, b))
end

function math.mapClamp(x, a, b, c, d)
	local cc, dd
	if c < d then
		cc = c
		dd = d
	else
		cc = d
		dd = c
	end
	return math.clamp(math.map(x, a, b, c, d), cc, dd)
end
