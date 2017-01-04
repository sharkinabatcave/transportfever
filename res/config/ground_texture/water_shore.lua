local tu = require "texutil"

function data()
return {
	detailTex = tu.makeTextureMipmapClampVertical("ground_texture/water_border.dds", true, true),
	detailNrmlTex = tu.makeTextureMipmapClampVertical("ground_texture/water_border_nrml.dds", true, true, true),
	detailSize = { 8.0, 8.0 },

	priority = 1
}
end
