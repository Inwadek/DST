local assets =
{
	Asset( "ANIM", "anim/austin.zip" ),
}

local skins =
{
	normal_skin = "austin",
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