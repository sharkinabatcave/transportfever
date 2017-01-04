require "mathutil"
require "stringutil"
require "tableutil"

getmetatable("").__mod = string.interp

function debugPrint(x)
	require "serialize"

	local backup = io.output()
	io.output(io.stdout)

	serialize(x)

	io.output(backup)
end
