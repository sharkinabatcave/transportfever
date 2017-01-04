local tu = require "texutil"

function data()
return {
	detailTex = tu.makeTextureMipmapClamp("ground_texture/town_dark.dds", true, true),
	detailNrmlTex = tu.makeTextureMipmapClamp("ground_texture/town_dark_nrml.dds", true, true, true),
	detailSize = { 96.0, 96.0 }
}
end
