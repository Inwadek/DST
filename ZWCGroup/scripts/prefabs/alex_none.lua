local assets =
{
	Asset( "ANIM", "anim/alex.zip" ),
	Asset( "ANIM", "anim/ghost_alex_build.zip" ),
}

local skins =
{
	normal_skin = "alex",
	ghost_skin = "ghost_alex_build",
}

local base_prefab = "alex"

local tags = {"ALEX", "CHARACTER"}

return CreatePrefabSkin("alex_none",
{
	base_prefab = base_prefab, 
	skins = skins, 
	assets = assets,
	tags = tags,
	
	skip_item_gen = true,
	skip_giftable_gen = true,
})