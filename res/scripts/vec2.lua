local vec2 = { }

function vec2.new(x, y)
	return { x = x, y = y }
end

function vec2.add(a, b)
	return { x = a.x + b.x, y = a.y + b.y }
end

function vec2.sub(a, b)
	return { x = a.x - b.x, y = a.y - b.y }
end

function vec2.mul(f, v)
	return { x = f * v.x, y = f * v.y }
end

function vec2.length(v)
	return math.sqrt(v.x * v.x + v.y * v.y)
end

function vec2.distance(a, b)
	return vec2.length(vec2.sub(a, b))
end

function vec2.dot(a, b)
	return a.x * b.x + a.y * b.y
end

function vec2.normalize(v)
	return vec2.mul(1.0 / vec2.length(v), v)
end

function vec2.rotate90(v) 
	return vec2.new(-v.y, v.x)
end

function vec2.angle(a, b)
	local arg = vec2.dot(a, b) / (vec2.length(a) * vec2.length(b))
	if arg < -1.0 then arg = -1.0 elseif arg > 1.0 then arg = 1.0 end
	return math.acos(arg)
end

return vec2
