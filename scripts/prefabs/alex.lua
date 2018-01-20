local MakePlayerCharacter = require "prefabs/player_common"
local assets = {
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
}
local prefabs = {}
local start_inv = {
	"lighter",
}
local function onbecamehuman(inst)
	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "alex_speed_mod", 1)
end
local function onbecameghost(inst)
	inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "alex_speed_mod")
end
local function onload(inst)
	inst:ListenForEvent("ms_respawnedfromghost", onbecamehuman)
	inst:ListenForEvent("ms_becameghost", onbecameghost)
	if inst:HasTag("playerghost") then
		onbecameghost(inst)
	else
		onbecamehuman(inst)
	end
end
local common_postinit = function(inst)
	inst.MiniMapEntity:SetIcon( "alex.tex" )
end
local master_postinit = function(inst)
	ATF(inst,"willow")
	inst.components.health.fire_damage_scale = 0
end
return MakePlayerCharacter("alex", prefabs, assets, common_postinit, master_postinit, start_inv)