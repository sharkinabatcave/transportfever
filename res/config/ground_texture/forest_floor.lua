local tu = require "texutil"

function data()
return {
	detailTex = tu.makeTextureMipmapClamp("ground_texture/grass_wood.dds", true, true),
	detailNrmlTex = tu.makeTextureMipmapClamp("ground_texture/grass_wood_nrml.dds", true, true, true),
	--detailSize = { 16.0, 16.0 }
	detailSize = { 32.0, 32.0 }
}
end
