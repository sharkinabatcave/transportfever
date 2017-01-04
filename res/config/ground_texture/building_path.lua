local tu = require "texutil"

function data()
return {
	detailTex = tu.makeTextureMipmapClamp("ground_texture/grass_wood.dds", true, true),
	detailNrmlTex = tu.makeTextureMipmapClamp("ground_texture/grass_wood_nrml.dds", true, true, true),
	detailSize = { 6.0, 6.0 },
	
	priority = 1
}
end
