local assets =
{
	Asset( "ANIM", "anim/gracie.zip" ),
}

local skins =
{
	normal_skin = "gracie",
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