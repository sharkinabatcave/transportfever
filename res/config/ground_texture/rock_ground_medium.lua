local tu = require "texutil"

function data()
return {
	detailTex = tu.makeTextureMipmapClamp("ground_texture/rock_ground_medium.dds", true, true),
	detailNrmlTex = tu.makeTextureMipmapClamp("ground_texture/rock_ground_medium_nrml.dds", true, true, true),
	detailSize = { 8.0, 8.0 }
}
end
