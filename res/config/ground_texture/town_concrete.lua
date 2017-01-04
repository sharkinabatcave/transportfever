local tu = require "texutil"

function data()
return {
	detailTex = tu.makeTextureMipmapRepeat("ground_texture/town_concrete.dds", true, true),
	detailNrmlTex = tu.makeTextureMipmapRepeat("streets/new_small_paving_normal.dds", true, true, true),
	detailSize = { 8.0, 8.0 },
	colorTex = tu.makeTextureMipmapRepeat("ground_texture/town_concrete_overlay.tga", false),
	colorSize = 29.0,
	
	priority = 10
}
end
