local assets =
{
	Asset( "ANIM", "anim/gracie.zip" ),
	Asset( "ANIM", "anim/ghost_gracie_build.zip" ),
}

local skins =
{
	normal_skin = "gracie",
	ghost_skin = "ghost_gracie_build",
}

local base_prefab = "gracie"

local tags = {"GRACIE", "CHARACTER"}

return CreatePrefabSkin("gracie_none",
{
	base_prefab = base_prefab, 
	skins = skins, 
	assets = assets,
	tags = tags,
	
	skip_item_gen = true,
	skip_giftable_gen = true,
})