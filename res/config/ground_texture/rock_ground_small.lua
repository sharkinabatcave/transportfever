local tu = require "texutil"

function data()
return {
	detailTex = tu.makeTextureMipmapClamp("ground_texture/rock_ground_small.dds", true, true),
	detailNrmlTex = tu.makeTextureMipmapClamp("ground_texture/rock_ground_small_nrml.dds", true, true, true),
	detailSize = { 4.0, 4.0 }
}
end
