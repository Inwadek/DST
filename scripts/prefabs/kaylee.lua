local MakePlayerCharacter = require "prefabs/player_common"
local assets = {
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
}
local prefabs = {}
local start_inv = {
	"lighter",
}
local common_postinit = function(inst)
	inst.MiniMapEntity:SetIcon( "kaylee.tex" )
end
local master_postinit = function(inst)
	ATF(inst,"willow")
	inst.components.health.fire_damage_scale = 0
end
return MakePlayerCharacter("kaylee", prefabs, assets, common_postinit, master_postinit, start_inv)