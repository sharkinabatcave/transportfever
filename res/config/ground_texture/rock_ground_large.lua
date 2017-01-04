local tu = require "texutil"

function data()
return {
	detailTex = tu.makeTextureMipmapClamp("ground_texture/rock_ground_large.dds", true, true),
	detailNrmlTex = tu.makeTextureMipmapClamp("ground_texture/rock_ground_large_nrml.dds", true, true, true),
	detailSize = { 16.0, 16.0 }
}
end
