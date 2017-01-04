local tu = require "texutil"

function data()
return {
	detailTex = tu.makeTextureMipmapClamp("ground_texture/usa/grass_wood.dds", true, true),
	detailNrmlTex = tu.makeTextureMipmapClamp("ground_texture/usa/grass_wood_nrml.dds", true, true, true),
	detailSize = { 32.0, 32.0 }
}
end
