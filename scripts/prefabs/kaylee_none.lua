local assets =
{
	Asset( "ANIM", "anim/kaylee.zip" ),
	Asset( "ANIM", "anim/ghost_kaylee_build.zip" ),
}

local skins =
{
	normal_skin = "kaylee",
	ghost_skin = "ghost_kaylee_build",
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