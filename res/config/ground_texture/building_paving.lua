local tu = require "texutil"

function data()
return {
	detailTex = tu.makeTextureMipmapClampVertical("ground_texture/lot_detail_border_albedo.dds", true, true),
	detailNrmlTex = tu.makeTextureMipmapClampVertical("ground_texture/lot_detail_border_normal.dds", true, true, true),
	detailSize = { 32.0, 4.0 },
	colorTex = tu.makeTextureMipmapRepeat("ground_texture/lot_color.tga", false),
	colorSize = 256.0,
	
	priority = 11
}
end
