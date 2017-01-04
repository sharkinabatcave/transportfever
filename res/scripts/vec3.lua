local vec3 = { }

function vec3.new(x, y, z)
	return { x = x, y = y, z = z }
end

function vec3.add(a, b)
	return { x = a.x + b.x, y = a.y + b.y, z = a.z + b.z }
end

function vec3.sub(a, b)
	return { x = a.x - b.x, y = a.y - b.y, z = a.z - b.z }
end

function vec3.mul(f, v)
	return { x = f * v.x, y = f * v.y, z = f * v.z }
end

function vec3.dot(a, b)
	return a.x * b.x + a.y * b.y + a.z * b.z;
end

function vec3.length(v)
	return math.sqrt(vec3.dot(v, v))
end

function vec3.distance(a, b)
	return vec3.length(vec3.sub(a, b))
end

function vec3.normalize(v)
	return vec3.mul(1.0 / vec3.length(v), v)
end

function vec3.angleUnit(a, b)
	arg = vec3.dot(a, b)
	
	if (arg < -1.0) then 
		arg = -1.0
	elseif (arg > 1.0) then 
		arg = 1.0
	end
	
	return math.acos(arg)
end

function vec3.xyAngle(v)
	return math.atan2(v.y, v.x)
end

return vec3
