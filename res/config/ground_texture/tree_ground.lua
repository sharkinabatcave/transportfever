local tu = require "texutil"

function data()
return {
	detailTex = tu.makeTextureMipmapClamp("ground_texture/tree_ground.dds", true, true),
	detailNrmlTex = tu.makeTextureMipmapClamp("ground_texture/tree_ground_nrml.dds", true, true, true),
	detailSize = { 4.0, 4.0 },

	priority = 1
}
end
