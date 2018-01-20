local MakePlayerCharacter = require "prefabs/player_common"
local assets = {
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
}
local prefabs = {}
local start_inv = {
	"spidereggsack",
	"spear",
}
local function onbecamehuman(inst)
	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "gracie_speed_mod", 1)
end
local function onbecameghost(inst)
	inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "gracie_speed_mod")
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
	inst:AddTag("spiderwhisperer")
	inst.MiniMapEntity:SetIcon( "gracie.tex" )
end
local master_postinit = function(inst)	
	ATF(inst,"willow")
end
return MakePlayerCharacter("gracie", prefabs, assets, common_postinit, master_postinit, start_inv)