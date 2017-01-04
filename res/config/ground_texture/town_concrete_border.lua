local tu = require "texutil"

function data()
return {
	detailTex = tu.makeTextureMipmapClampVertical("ground_texture/town_concrete_border.dds", true, true),
	detailNrmlTex = tu.makeTextureMipmapClampVertical("ground_texture/town_concrete_border_normal.dds", true, true, true),
	detailSize = { 8.0, 1.0 },
	colorTex = tu.makeTextureMipmapRepeat("ground_texture/town_concrete_overlay.tga", false),
	colorSize = 29.0,
	
	priority = 10
}
end
