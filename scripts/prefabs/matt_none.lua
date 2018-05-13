local assets =
{
	Asset( "ANIM", "anim/matt.zip" ),
}

local skins =
{
	normal_skin = "matt",
}

local base_prefab = "matt"

local tags = {"MATT", "CHARACTER"}

return CreatePrefabSkin("matt_none",
{
	base_prefab = base_prefab, 
	skins = skins, 
	assets = assets,
	tags = tags,
	
	skip_item_gen = true,
	skip_giftable_gen = true,
})