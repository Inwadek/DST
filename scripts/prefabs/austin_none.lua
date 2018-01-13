local assets =
{
	Asset( "ANIM", "anim/austin.zip" ),
	Asset( "ANIM", "anim/ghost_austin_build.zip" ),
}

local skins =
{
	normal_skin = "austin",
	ghost_skin = "ghost_austin_build",
}

local base_prefab = "austin"

local tags = {"AUSTIN", "CHARACTER"}

return CreatePrefabSkin("austin_none",
{
	base_prefab = base_prefab, 
	skins = skins, 
	assets = assets,
	tags = tags,
	
	skip_item_gen = true,
	skip_giftable_gen = true,
})