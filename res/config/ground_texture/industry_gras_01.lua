local tu = require "texutil"

function data()
return {
	detailTex = tu.makeTextureMipmapRepeat("ground_texture/industry_gras_01_albedo.dds", true, true),
	detailNrmlTex = tu.makeTextureMipmapRepeat("ground_texture/industry_gras_01_normal.dds", true, true, true),
	detailSize = { 8.0, 8.0 },
	colorTex = tu.makeTextureMipmapRepeat("models/industry/overlay_textures/small_02.tga", false),
	colorSize = 256.0
}
end
