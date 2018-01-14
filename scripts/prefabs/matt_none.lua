local assets =
{
	Asset( "ANIM", "anim/matt.zip" ),
	Asset( "ANIM", "anim/ghost_matt_build.zip" ),
}

local skins =
{
	normal_skin = "matt",
	ghost_skin = "ghost_matt_build",
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