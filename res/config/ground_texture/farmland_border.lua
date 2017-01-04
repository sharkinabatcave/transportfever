local tu = require "texutil"

function data()
return {
	detailTex = tu.makeTextureMipmapClampVertical("ground_texture/farmland_border.dds", true, true),
	detailNrmlTex = tu.makeTextureMipmapClampVertical("ground_texture/farmland_border_nrml.dds", true, true, true),
	detailSize = { 64.0, 8.0 },
	colorTex = tu.makeTextureMipmapRepeat("ground_texture/farmland_border_color.tga", false),
	colorSize = 256.0,

	priority = 1
}
end
