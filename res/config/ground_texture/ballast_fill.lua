local tu = require "texutil"

function data()
return {
	detailTex = tu.makeTextureMipmapRepeat("ground_texture/ballast_ground_fill.dds", true, true),
	detailNrmlTex = tu.makeTextureMipmapRepeat("default_normal_map.tga", true, true, true),
	detailSize = { 8.0, 4.0 },
	colorTex = tu.makeTextureMipmapRepeat("tracks/ballast_color.tga", false),
	colorSize = 128.0,
	priority = 10
}
end
