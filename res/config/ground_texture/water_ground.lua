local tu = require "texutil"

function data()
return {
	detailTex = tu.makeTextureMipmapRepeat("ground_texture/riverbed_detail.dds", true, true),
	detailNrmlTex = tu.makeTextureMipmapRepeat("ground_texture/riverbed_nrml.dds", true, true, true),
	detailSize = { 32.0, 32.0 },
	colorTex = tu.makeTextureMipmapRepeat("ground_texture/riverbed_color.tga", false),
	colorSize = 256.0
}
end
