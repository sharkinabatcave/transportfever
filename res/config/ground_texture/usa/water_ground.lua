local tu = require "texutil"

function data()
return {
	detailTex = tu.makeTextureMipmapRepeat("ground_texture/usa/riverbed_detail.dds", true, true),
	detailNrmlTex = tu.makeTextureMipmapRepeat("ground_texture/usa/riverbed_nrml.dds", true, true, true),
	detailSize = { 20.0, 20.0 },
	colorTex = tu.makeTextureMipmapRepeat("ground_texture/usa/riverbed_color.tga", false),
	colorSize = 256.0
}
end
