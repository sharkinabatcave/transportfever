local tu = require "texutil"

function data()
return {
	detailTex = tu.makeTextureMipmapClamp("ground_texture/usa/grass_wood_1.dds", true, true),
	detailNrmlTex = tu.makeTextureMipmapClamp("ground_texture/usa/grass_wood_1_nrml.dds", true, true, true),
	detailSize = { 32.0, 32.0 },

	priority = 1
}
end
