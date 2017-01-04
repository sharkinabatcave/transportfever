local tu = require "texutil"

function data()
return {
	detailTex = tu.makeTextureMipmapRepeat("ground_texture/lot_detail_albedo.dds", true, true),
	detailNrmlTex = tu.makeTextureMipmapRepeat("ground_texture/lot_detail_normal.dds", true, true, true),
	detailSize = { 16.0, 16.0 },
	colorTex = tu.makeTextureMipmapRepeat("ground_texture/lot_color.tga", false),
	colorSize = 256.0,
	
	priority = 11
}
end
