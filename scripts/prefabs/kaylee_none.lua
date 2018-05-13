local assets =
{
	Asset( "ANIM", "anim/kaylee.zip" ),
}

local skins =
{
	normal_skin = "kaylee",
}

local base_prefab = "kaylee"

local tags = {"KAYLEE", "CHARACTER"}

return CreatePrefabSkin("kaylee_none",
{
	base_prefab = base_prefab, 
	skins = skins, 
	assets = assets,
	tags = tags,
	
	skip_item_gen = true,
	skip_giftable_gen = true,
})