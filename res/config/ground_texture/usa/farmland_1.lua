local tu = require "texutil"

function data()
return {
	detailTex = tu.makeTextureMipmapRepeat("ground_texture/usa/farmland_brown_02_detail.dds", true, true),
	detailNrmlTex = tu.makeTextureMipmapRepeat("ground_texture/usa/farmland_brown_02_nrml.dds", true, true, true),
	detailSize = { 32.0, 32.0 },
	colorTex = tu.makeTextureMipmapRepeat("ground_texture/usa/farmland_brown_02_color.tga", false),
	colorSize = 256.0
}
end
