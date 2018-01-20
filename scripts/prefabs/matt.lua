local MakePlayerCharacter = require "prefabs/player_common"
local assets = {
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
}
local prefabs = {}
local start_inv = {
	"katana",
}
local function onbecamehuman(inst)
	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "matt_speed_mod", 1)
end
local function onbecameghost(inst)
	inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "matt_speed_mod")
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
	inst.MiniMapEntity:SetIcon( "matt.tex" )
end
local master_postinit = function(inst)
	ATF(inst,"wilson")
end
return MakePlayerCharacter("matt", prefabs, assets, common_postinit, master_postinit, start_inv)